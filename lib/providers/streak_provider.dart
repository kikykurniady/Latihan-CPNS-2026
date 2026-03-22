import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'streak_provider.freezed.dart';

const String _currentStreakKey = 'streak_current';
const String _longestStreakKey = 'streak_longest';
const String _lastActiveDateKey = 'streak_last_date';
const String _todayCountKey = 'streak_today_count';

@freezed
class StreakState with _$StreakState {
  const factory StreakState({
    required int currentStreak,
    required int longestStreak,
    required int todayCount,
    DateTime? lastActiveDate,
  }) = _StreakState;

  factory StreakState.initial() => const StreakState(
        currentStreak: 0,
        longestStreak: 0,
        todayCount: 0,
        lastActiveDate: null,
      );
}

class StreakNotifier extends Notifier<StreakState> {
  late SharedPreferences _prefs;

  @override
  StreakState build() {
    return StreakState.initial();
  }

  Future<void> load() async {
    _prefs = await SharedPreferences.getInstance();

    final current = _prefs.getInt(_currentStreakKey) ?? 0;
    final longest = _prefs.getInt(_longestStreakKey) ?? 0;
    final today = _prefs.getInt(_todayCountKey) ?? 0;
    final lastDateString = _prefs.getString(_lastActiveDateKey);
    final lastDate = lastDateString != null ? DateTime.parse(lastDateString) : null;

    state = state.copyWith(
      currentStreak: current,
      longestStreak: longest,
      todayCount: today,
      lastActiveDate: lastDate,
    );

    _resetTodayCountIfNeeded();
  }

  void _resetTodayCountIfNeeded() {
     final now = DateTime.now();
     final last = state.lastActiveDate;
     if (last != null &&
        (now.year != last.year || now.month != last.month || now.day != last.day)) {
       state = state.copyWith(todayCount: 0);
       _prefs.setInt(_todayCountKey, 0);
     }
  }

  Future<void> checkAndUpdateStreak() async {
    final now = DateTime.now();
    final last = state.lastActiveDate;
    int newStreak = state.currentStreak;

    if (last == null) {
      newStreak = 1;
    } else {
      final difference = now.difference(last).inDays;
      if (difference == 1) {
        newStreak++;
      } else if (difference > 1) {
        newStreak = 1;
      }
       // if difference is 0, do nothing
    }

    int newLongest = state.longestStreak;
    if (newStreak > newLongest) {
      newLongest = newStreak;
    }

    state = state.copyWith(
      currentStreak: newStreak,
      longestStreak: newLongest,
      lastActiveDate: now,
    );

    await _save();
  }

  Future<void> incrementTodayCount() async {
    state = state.copyWith(todayCount: state.todayCount + 1);
    await _save();
  }

  Future<void> reset() async {
    state = StreakState.initial();
    await _save();
  }

  Future<void> _save() async {
    await _prefs.setInt(_currentStreakKey, state.currentStreak);
    await _prefs.setInt(_longestStreakKey, state.longestStreak);
    await _prefs.setInt(_todayCountKey, state.todayCount);
    if (state.lastActiveDate != null) {
      await _prefs.setString(_lastActiveDateKey, state.lastActiveDate!.toIso8601String());
    }
  }
}

final streakProvider = NotifierProvider<StreakNotifier, StreakState>(StreakNotifier.new);
