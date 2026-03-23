import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns_2026/core/constants/dummy_data.dart';
import 'package:latihan_cpns_2026/models/question.dart';
import 'package:latihan_cpns_2026/models/quiz_result.dart';

// Holds the user's selected answers for each question
final selectedAnswersProvider =
    StateProvider<Map<String, String>>((ref) => ({}));

// Provides the list of questions for a given sub-topic
final questionsProvider =
    Provider.family<List<Question>, String>((ref, subTopicId) {
  return dummyQuestions.where((q) => q.subTopic == subTopicId).toList();
});

// Tracks whether the user has submitted their answers for the current question
final submittedQuizProvider = StateProvider<bool>((ref) => false);

// Quiz state provider
class QuizState {
  final List<Question> questions;
  final int currentQuestionIndex;
  final Map<int, int> selectedAnswers;
  final int timeLeftInSeconds;
  final bool isQuizFinished;
  final bool showExplanation;
  final bool isLoading;

  QuizState({
    required this.questions,
    this.currentQuestionIndex = 0,
    this.selectedAnswers = const {},
    this.timeLeftInSeconds = 0,
    this.isQuizFinished = false,
    this.showExplanation = false,
    this.isLoading = false,
  });

  Question? get currentQuestion {
    if (currentQuestionIndex < questions.length) {
      return questions[currentQuestionIndex];
    }
    return null;
  }

  bool get isLastQuestion => currentQuestionIndex == questions.length - 1;
  bool get isCurrentQuestionBookmarked => false;
  String get category => currentQuestion?.category ?? '';
  String get categoryColor => '';

  QuizState copyWith({
    List<Question>? questions,
    int? currentQuestionIndex,
    Map<int, int>? selectedAnswers,
    int? timeLeftInSeconds,
    bool? isQuizFinished,
    bool? showExplanation,
    bool? isLoading,
  }) {
    return QuizState(
      questions: questions ?? this.questions,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
      timeLeftInSeconds: timeLeftInSeconds ?? this.timeLeftInSeconds,
      isQuizFinished: isQuizFinished ?? this.isQuizFinished,
      showExplanation: showExplanation ?? this.showExplanation,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

class QuizNotifier extends StateNotifier<QuizState> {
  QuizNotifier() : super(QuizState(questions: []));

  void loadQuestions(dynamic subTopic) {
    final subTopicId = subTopic is String ? subTopic : subTopic.id;
    final questions = dummyQuestions
        .where((q) => q.subTopic == subTopicId)
        .toList();
    state = state.copyWith(questions: questions);
  }

  void selectAnswer(int questionId, int answerIndex) {
    final updatedAnswers = {...state.selectedAnswers};
    updatedAnswers[questionId] = answerIndex;
    state = state.copyWith(selectedAnswers: updatedAnswers);
  }

  void nextQuestion() {
    if (state.currentQuestionIndex < state.questions.length - 1) {
      state = state.copyWith(
        currentQuestionIndex: state.currentQuestionIndex + 1,
        showExplanation: false,
      );
    }
  }

  void previousQuestion() {
    if (state.currentQuestionIndex > 0) {
      state = state.copyWith(
        currentQuestionIndex: state.currentQuestionIndex - 1,
        showExplanation: false,
      );
    }
  }

  void toggleShowExplanation() {
    state = state.copyWith(showExplanation: !state.showExplanation);
  }

  void finishQuiz() {
    state = state.copyWith(isQuizFinished: true);
  }

  void resetQuiz() {
    state = QuizState(questions: []);
  }

  void tickTimer() {
    if (state.timeLeftInSeconds > 0) {
      state = state.copyWith(timeLeftInSeconds: state.timeLeftInSeconds - 1);
    }
  }

  bool isTimeUp() {
    return state.timeLeftInSeconds <= 0;
  }

  QuizResult buildResult() {
    int correct = 0;
    int wrong = 0;

    for (var i = 0; i < state.questions.length; i++) {
      final question = state.questions[i];
      final selectedAnswerIndex = state.selectedAnswers[question.id];

      if (selectedAnswerIndex != null) {
        final selectedAnswer = question.answers[selectedAnswerIndex];
        if (selectedAnswer.isCorrect) {
          correct++;
        } else {
          wrong++;
        }
      }
    }

    final total = state.questions.length;
    final score = (correct / total) * 100;
    final isPassing = score >= 70.0;

    return QuizResult(
      score: score,
      correctCount: correct,
      wrongCount: wrong,
      skippedCount: total - correct - wrong,
      isPassing: isPassing,
      passingGrade: 70.0,
    );
  }

  String getOptionState(int questionId, int optionIndex) {
    final selectedIndex = state.selectedAnswers[questionId];
    if (selectedIndex == null) return 'unselected';
    if (selectedIndex == optionIndex) return 'selected';
    return 'unselected';
  }

  void toggleBookmark(int questionId) {}
}

final quizProvider = StateNotifierProvider<QuizNotifier, QuizState>((ref) {
  return QuizNotifier();
});
