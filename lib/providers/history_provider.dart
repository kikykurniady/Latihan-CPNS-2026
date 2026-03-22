import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/quiz_session.dart';
import '../data/repositories/session_repository.dart';
import 'database_providers.dart';

part 'history_provider.freezed.dart';

@freezed
class HistoryStats with _$HistoryStats {
  const factory HistoryStats({
    required int totalSessions,
    required double averageScore,
    required double highestScore,
    required double lowestScore,
  }) = _HistoryStats;
}

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    required List<QuizSession> sessions,
    required List<QuizSession> filteredSessions,
    required HistoryStats stats,
    String? selectedCategory,
  }) = _HistoryState;

  factory HistoryState.initial() => const HistoryState(
        sessions: [],
        filteredSessions: [],
        stats: HistoryStats(totalSessions: 0, averageScore: 0, highestScore: 0, lowestScore: 0),
      );
}

class HistoryNotifier extends Notifier<HistoryState> {
  @override
  HistoryState build() {
    return HistoryState.initial();
  }

  Future<void> load() async {
    final sessions = await ref.read(sessionRepositoryProvider).getSessions();
    sessions.sort((a, b) => b.startTime.compareTo(a.startTime));
    state = state.copyWith(sessions: sessions, filteredSessions: sessions);
    _computeStats();
  }

  void filterByCategory(String? category) {
    if (category == null) {
      state = state.copyWith(filteredSessions: state.sessions, selectedCategory: null);
    } else {
      final filtered = state.sessions.where((s) => s.category == category).toList();
      state = state.copyWith(filteredSessions: filtered, selectedCategory: category);
    }
    _computeStats();
  }

  List<({double x, double y, DateTime date, String category})> computeChartData() {
    final chartData = state.filteredSessions.reversed.mapIndexed((index, session) {
      return (
        x: index.toDouble(),
        y: session.score,
        date: session.startTime,
        category: session.category,
      );
    }).toList();
    return chartData;
  }

  HistoryStats getStatsByCategory(String category) {
    final sessions = state.sessions.where((s) => s.category == category).toList();
    return _calculateStats(sessions);
  }
  
  void addSession(QuizSession session) {
     final updatedSessions = [session, ...state.sessions];
      state = state.copyWith(sessions: updatedSessions);
      filterByCategory(state.selectedCategory);
  }

  void _computeStats() {
    final stats = _calculateStats(state.filteredSessions);
    state = state.copyWith(stats: stats);
  }

  HistoryStats _calculateStats(List<QuizSession> sessions) {
    if (sessions.isEmpty) {
      return const HistoryStats(totalSessions: 0, averageScore: 0, highestScore: 0, lowestScore: 0);
    }
    final scores = sessions.map((s) => s.score);
    return HistoryStats(
      totalSessions: sessions.length,
      averageScore: scores.average,
      highestScore: scores.max,
      lowestScore: scores.min,
    );
  }
}

final historyProvider = NotifierProvider<HistoryNotifier, HistoryState>(HistoryNotifier.new);

final historyFilterProvider = StateProvider<String?>((ref) => null);
