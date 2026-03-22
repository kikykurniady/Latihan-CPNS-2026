
class Question {
  final int id;
  final String category;
  final String question;
  final List<String> options;
  final int correctAnswer;
  final List<int>? tkpWeights;

  Question({
    required this.id,
    required this.category,
    required this.question,
    required this.options,
    required this.correctAnswer,
    this.tkpWeights,
  });
}
