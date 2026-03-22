
import 'dart:async';
import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../data/database/app_database.dart';
import '../data/models/quiz_session.dart';
import '../data/repositories/bookmark_repository.dart';
import '../data/repositories/question_repository.dart';
import '../data/repositories/session_repository.dart';
import 'database_providers.dart';
import 'history_provider.dart';
import 'progress_provider.dart';

part 'quiz_provider.freezed.dart';
part 'quiz_provider.g.dart';

const int defaultQuestionCount = 20;
const int defaultTimeLimit = 900; // 15 minutes

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required List<Question> questions,
    required int currentIndex,
    required Map<int, int> answers,
    required bool isComplete,
    required int timeRemainingSeconds,
    required int questionCount,
    int? selectedAnswer,
    @Default(false) bool showExplanation,
  }) = _QuizState;

  factory QuizState.initial() => const QuizState(
        questions: [],
        currentIndex: 0,
        answers: {},
        isComplete: false,
        timeRemainingSeconds: defaultTimeLimit,
        questionCount: defaultQuestionCount,
      );
}

@riverpod
class QuizNotifier extends _$QuizNotifier {
  Timer? _timer;

  @override
  FutureOr<QuizState> build() {
    ref.onDispose(() {
      _timer?.cancel();
    });
    // Return initial state, actual loading is done via loadQuestions
    return QuizState.initial();
  }

  Future<void> loadQuestions({
    required String category,
    String? subTopic,
    bool isRandom = false,
    bool isBookmark = false,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final questionRepo = ref.read(questionRepositoryProvider);
      
      List<Question> loadedQuestions;

      if (isBookmark) {
        loadedQuestions = await questionRepo.getBookmarked();
      } else if (isRandom) {
        final allQuestions = await questionRepo.getAll();
        allQuestions.shuffle();
        loadedQuestions = allQuestions.take(defaultQuestionCount).toList();
      } else if (subTopic != null) {
        loadedQuestions = await questionRepo.getBySubTopic(category, subTopic);
      } else {
        loadedQuestions = await questionRepo.getByCategory(category);
      }

      if (isRandom) {
        loadedQuestions.shuffle();
      }

      _startTimer();

      return QuizState(
        questions: loadedQuestions,
        currentIndex: 0,
        answers: {},
        isComplete: false,
        timeRemainingSeconds: defaultTimeLimit,
        questionCount: loadedQuestions.length,
      );
    });
  }

  void selectAnswer(int answerIndex) {
    state.whenData((currentState) {
      if (currentState.showExplanation) return; // Lock answer after confirmation

      final newAnswers = Map<int, int>.from(currentState.answers);
      final question = currentState.questions[currentState.currentIndex];
      newAnswers[question.id] = answerIndex;

      state = AsyncData(currentState.copyWith(
        selectedAnswer: answerIndex,
        answers: newAnswers,
      ));
    });
  }

  void confirmAnswer() {
    state.whenData((currentState) {
       if (currentState.selectedAnswer == null) return;
      state = AsyncData(currentState.copyWith(showExplanation: true));
    });
  }

  void nextQuestion() {
    state.whenData((currentState) {
      if (currentState.currentIndex < currentState.questions.length - 1) {
        state = AsyncData(currentState.copyWith(
          currentIndex: currentState.currentIndex + 1,
          selectedAnswer: null,
          showExplanation: false,
        ));
      } else {
        completeQuiz();
      }
    });
  }

  void completeQuiz() {
    _timer?.cancel();
    state.whenData((currentState) async {
       if (currentState.isComplete) return;

      final session = _calculateScore(currentState);
      await ref.read(sessionRepositoryProvider).saveSession(session);
      
      // Notify other providers
      ref.invalidate(historyProvider);
      ref.invalidate(progressProvider);

      state = AsyncData(currentState.copyWith(isComplete: true));
    });
  }

  void _tickTimer() {
    state.whenData((currentState) {
      if (currentState.timeRemainingSeconds > 0) {
        state = AsyncData(currentState.copyWith(
          timeRemainingSeconds: currentState.timeRemainingSeconds - 1,
        ));
      } else {
        completeQuiz();
      }
    });
  }
    void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tickTimer());
  }


  QuizSession _calculateScore(QuizState quizState) {
    final question = quizState.questions.first;
    int correct = 0;
    int wrong = 0;
    int skipped = 0;
    double rawScore = 0;

    for (var q in quizState.questions) {
      final selectedAnswerIndex = quizState.answers[q.id];

      if (selectedAnswerIndex == null) {
        skipped++;
        continue;
      }

      if (question.category == 'TKP') {
        if (q.tkpWeights != null && q.tkpWeights!.length > selectedAnswerIndex) {
          rawScore += q.tkpWeights![selectedAnswerIndex];
        }
      } else {
        if (selectedAnswerIndex == q.correctAnswer) {
          correct++;
        } else {
          wrong++;
        }
      }
    }
    
    double finalScore = 0;
    if (question.category == 'TKP') {
      final maxScore = quizState.questionCount * 5;
      finalScore = (rawScore / maxScore) * 200;
    } else { // TWK & TIU
      rawScore = (correct * 5).toDouble();
      finalScore = (correct / quizState.questionCount) * 100;
    }

    return QuizSession(
      id: const Uuid().v4(),
      category: question.category,
      subTopic: question.subTopic,
      startTime: DateTime.now().subtract(Duration(seconds: defaultTimeLimit - quizState.timeRemainingSeconds)),
      endTime: DateTime.now(),
      totalQuestions: quizState.questionCount,
      correctCount: correct,
      wrongCount: wrong,
      skippedCount: skipped,
      score: finalScore,
      durationSeconds: defaultTimeLimit - quizState.timeRemainingSeconds,
      isRandom: false, // This should be passed in loadQuestions
    );
  }
}

// Computed Providers
final currentQuestionProvider = Provider<Question?>((ref) {
  final quizState = ref.watch(quizNotifierProvider);
  return quizState.maybeWhen(
    data: (state) => state.questions.isNotEmpty ? state.questions[state.currentIndex] : null,
    orElse: () => null,
  );
});

final quizProgressProvider = Provider<double>((ref) {
  final quizState = ref.watch(quizNotifierProvider);
  return quizState.maybeWhen(
    data: (state) {
      if (state.questions.isEmpty) return 0.0;
      return (state.currentIndex + 1) / state.questions.length;
    },
    orElse: () => 0.0,
  );
});

final isPassingProvider = Provider<bool?>((ref) {
  final quizState = ref.watch(quizNotifierProvider);
  return quizState.maybeWhen(
    data: (state) {
      if (!state.isComplete) return null;
      
      final session = ref.read(quizNotifierProvider.notifier)._calculateScore(state);
      final category = session.category;
      final score = session.score;

      if (category == 'TWK') return score >= 65;
      if (category == 'TIU') return score >= 80;
      if (category == 'TKP') return score >= 166;
      return null;
    },
    orElse: () => null,
  );
});
