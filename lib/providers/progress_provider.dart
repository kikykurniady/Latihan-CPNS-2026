import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/quiz_session.dart';
import 'database_providers.dart';

part 'progress_provider.freezed.dart';

@freezed
class CategoryProgress with _$CategoryProgress {
  const factory CategoryProgress({
    required int totalAttempts,
    required double averageScore,
    required List<String> completedSubTopics,
    double? lastScore,
  }) = _CategoryProgress;

  factory CategoryProgress.initial() => const CategoryProgress(
        totalAttempts: 0,
        averageScore: 0,
        completedSubTopics: [],
      );
}

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState({
    required Map<String, CategoryProgress> categoryProgress,
    required int dailyProgress,
    @Default(20) int dailyTarget,
  }) = _ProgressState;

  factory ProgressState.initial() => const ProgressState(
        categoryProgress: {},
        dailyProgress: 0,
        dailyTarget: 20,
      );
}

class ProgressNotifier extends Notifier<AsyncValue<ProgressState>> {
  @override
  AsyncValue<ProgressState> build() {
    return const AsyncLoading();
  }

  Future<void> load() async {
    final sessionRepo = ref.read(sessionRepositoryProvider);
    final sessions = await sessionRepo.getSessions();

    final Map<String, List<QuizSession>> sessionsByCategory = {};
    for (var session in sessions) {
      if (!sessionsByCategory.containsKey(session.category)) {
        sessionsByCategory[session.category] = [];
      }
      sessionsByCategory[session.category]!.add(session);
    }

    final Map<String, CategoryProgress> categoryProgressMap = {};
    sessionsByCategory.forEach((category, sessionList) {
      final totalAttempts = sessionList.length;
      final averageScore =
          sessionList.map((s) => s.score).reduce((a, b) => a + b) /
              totalAttempts;
      final lastScore = sessionList.isNotEmpty ? sessionList.last.score : null;

      final completedSubTopics = sessionList
          .where((s) {
            if (s.subTopic == null) return false;
            final passingScore = _getPassingScore(s.category);
            return s.score >= passingScore;
          })
          .map((s) => s.subTopic!)
          .toSet()
          .toList();

      categoryProgressMap[category] = CategoryProgress(
        totalAttempts: totalAttempts,
        averageScore: averageScore,
        lastScore: lastScore,
        completedSubTopics: completedSubTopics,
      );
    });

    final dailyProgress = sessions
        .where((s) => s.startTime.difference(DateTime.now()).inDays == 0)
        .length;

    state = AsyncData(ProgressState(
      categoryProgress: categoryProgressMap,
      dailyProgress: dailyProgress,
      dailyTarget: 20,
    ));
  }

  double getSubTopicCompletion(String category, String subTopic) {
    return state.maybeWhen(
      data: (data) {
        // TODO: Implement session tracking by subTopic
        return 0.0;
      },
      orElse: () => 0.0,
    );
  }

  Future<void> refreshAfterQuiz() async {
    await load();
  }

  double _getPassingScore(String category) {
    switch (category) {
      case 'TWK':
        return 65;
      case 'TIU':
        return 80;
      case 'TKP':
        return 166;
      default:
        return 0;
    }
  }
}

final progressProvider =
    NotifierProvider<ProgressNotifier, AsyncValue<ProgressState>>(
        ProgressNotifier.new);
