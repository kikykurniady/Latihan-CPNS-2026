import 'package:latihan_cpns/models/question.dart';

class ScoringResult {
  final double score;
  final int correctCount;
  final int wrongCount;
  final int skippedCount;
  final bool isPassing;
  final double passingGrade;
  final double scoreDifference;

  ScoringResult({
    required this.score,
    required this.correctCount,
    required this.wrongCount,
    required this.skippedCount,
    required this.isPassing,
    required this.passingGrade,
    required this.scoreDifference,
  });
}

class ScoringUtil {
  static ScoringResult calculate({
    required List<Question> questions,
    required Map<int, int> answers, // questionId -> selectedIndex
    required String category,
  }) {
    int totalQuestions = questions.length;
    int answeredCount = answers.length;
    double score = 0;
    int correctCount = 0;
    int wrongCount = 0;

    if (category.toUpperCase() == 'TKP') {
      int rawScore = answers.entries.fold(0, (sum, entry) {
        final question = questions.firstWhere((q) => q.id == entry.key);
        final selectedIndex = entry.value;
        if (question.tkpWeights != null && selectedIndex < question.tkpWeights!.length) {
            final points = question.tkpWeights![selectedIndex];
            if (points == 5) correctCount++; // Consider highest point as 'correct' for display
            return sum + points;
        }
        return sum;
      });

      // Max score is totalQuestions * 5, then scaled to 200
      score = (rawScore / (totalQuestions * 5)) * 200;

    } else {
      correctCount = answers.entries.where((entry) {
        final question = questions.firstWhere((q) => q.id == entry.key);
        return question.correctAnswer == entry.value;
      }).length;
      
      // Score is based on percentage of correct answers
      score = (correctCount / totalQuestions) * 100;
    }

    wrongCount = answeredCount - correctCount;
    int skippedCount = totalQuestions - answeredCount;
    double passingGrade = getPassingGrade(category).toDouble();
    bool isPassing = score >= passingGrade;
    double scoreDifference = score - passingGrade;

    return ScoringResult(
      score: score,
      correctCount: correctCount,
      wrongCount: wrongCount,
      skippedCount: skippedCount,
      isPassing: isPassing,
      passingGrade: passingGrade,
      scoreDifference: scoreDifference,
    );
  }

  static int getPassingGrade(String category) {
    switch (category.toUpperCase()) {
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
