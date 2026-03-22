import 'package:latihan_cpns/models/answer.dart';

class Question {
  final String id;
  final String subTopicId;
  final String questionText;
  final List<Answer> answers;
  final String? explanation;

  const Question({
    required this.id,
    required this.subTopicId,
    required this.questionText,
    required this.answers,
    this.explanation,
  });
}
