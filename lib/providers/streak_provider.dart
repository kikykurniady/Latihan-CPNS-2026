import 'package:flutter_riverpod/flutter_riverpod.dart';

// This is a placeholder class
class StreakNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void checkAndUpdateStreak() {}
}

final streakProvider = NotifierProvider<StreakNotifier, int>(StreakNotifier.new);
