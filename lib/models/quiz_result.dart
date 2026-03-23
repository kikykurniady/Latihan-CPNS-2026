class QuizResult {
  final double score;
  final int correctCount;
  final int wrongCount;
  final int skippedCount;
  final bool isPassing;
  final double passingGrade;
  final double finalScore;
  final int correctAnswers;
  final int wrongAnswers;
  final int unanswered;
  final Duration totalDuration;

  QuizResult({
    required this.score,
    required this.correctCount,
    required this.wrongCount,
    required this.skippedCount,
    required this.isPassing,
    this.passingGrade = 70.0,
    this.finalScore = 0.0,
    this.correctAnswers = 0,
    this.wrongAnswers = 0,
    this.unanswered = 0,
    this.totalDuration = const Duration(),
  });
}
