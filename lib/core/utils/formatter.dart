import 'package:intl/intl.dart';

class Formatter {
  static String formatDuration(int totalSeconds) {
    final duration = Duration(seconds: totalSeconds);
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  static String formatDate(DateTime date) {
    return DateFormat('EEEE, d MMMM yyyy', 'id').format(date);
  }

  static String formatScore(double score) {
    if (score % 1 == 0) {
      return score.toInt().toString();
    } else {
      return score.toStringAsFixed(1);
    }
  }

  static String formatCategory(String code) {
    switch (code.toUpperCase()) {
      case 'TWK':
        return 'Tes Wawasan Kebangsaan';
      case 'TIU':
        return 'Tes Intelegensia Umum';
      case 'TKP':
        return 'Tes Karakteristik Pribadi';
      default:
        return code;
    }
  }

  static String formatDifficulty(String difficulty) {
    if (difficulty.isEmpty) return '';
    return difficulty[0].toUpperCase() + difficulty.substring(1).toLowerCase();
  }
}
