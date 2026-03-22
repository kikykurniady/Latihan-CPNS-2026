import 'package:flutter/material.dart';
import 'package:latihan_cpns/models/question.dart';
import 'package:latihan_cpns/models/answer.dart';

class ReviewQuestionCard extends StatelessWidget {
  final Question question;
  final Answer? selectedAnswer;

  const ReviewQuestionCard({
    super.key,
    required this.question,
    this.selectedAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pertanyaan',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(question.text),
            const SizedBox(height: 16),
            ...question.answers.map((answer) => _buildAnswerOption(context, answer)),
            if (question.explanation != null && question.explanation!.isNotEmpty) ...[
              const Divider(height: 20),
              Text(
                'Penjelasan:',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(question.explanation!),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerOption(BuildContext context, Answer answer) {
    bool isSelected = selectedAnswer?.id == answer.id;
    bool isCorrect = answer.isCorrect;

    Color backgroundColor = Colors.transparent;
    Color borderColor = Colors.grey.shade400;
    Widget? leadingIcon;

    if (isCorrect) {
      backgroundColor = Colors.green.withOpacity(0.1);
      borderColor = Colors.green;
      leadingIcon = const Icon(Icons.check_circle, color: Colors.green);
    } else if (isSelected && !isCorrect) {
      backgroundColor = Colors.red.withOpacity(0.1);
      borderColor = Colors.red;
      leadingIcon = const Icon(Icons.cancel, color: Colors.red);
    } else if (selectedAnswer == null && !isCorrect) {
       // No answer was selected, this is just a wrong option
    } else if (isSelected) {
       // This is the correct answer and it was selected
    }

    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: borderColor, width: 1.5),
      ),
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            if (leadingIcon != null) ...[
              leadingIcon,
              const SizedBox(width: 12),
            ],
            Expanded(child: Text(answer.text)),
          ],
        ),
      ),
    );
  }
}
