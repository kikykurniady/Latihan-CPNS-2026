import 'package:latihan_cpns_2026/models/answer.dart';

class Question {
  final int id;
  final String category;
  final String questionText;
  final List<Answer> answers;
  final String? explanation;
  final String? subTopic;

  Question({
    required this.id,
    required this.category,
    required this.questionText,
    required this.answers,
    this.explanation,
    this.subTopic,
  });

  // Constructor alternatif untuk kompatibilitas dengan data lama
  factory Question.fromOptions({
    required int id,
    required String category,
    required String question,
    required List<String> options,
    required int correctAnswer,
    String? explanation,
    String? subTopic,
  }) {
    final answers = List<Answer>.generate(
      options.length,
      (index) => Answer(
        text: options[index],
        isCorrect: index == correctAnswer,
      ),
    );
    return Question(
      id: id,
      category: category,
      questionText: question,
      answers: answers,
      explanation: explanation,
      subTopic: subTopic,
    );
  }
}
