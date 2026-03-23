import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/question.dart';

class ResultQuestionCard extends StatelessWidget {
  final Question question;
  final String? selectedAnswerText;

  const ResultQuestionCard({
    super.key,
    required this.question,
    this.selectedAnswerText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            ...question.answers.map((answer) {
              final isSelected = selectedAnswerText == answer.text;
              Color color = Colors.transparent;
              Icon? icon;

              if (answer.isCorrect) {
                color = Colors.green.withOpacity(0.3);
                icon = const Icon(Icons.check, color: Colors.green);
              } else if (isSelected) {
                color = Colors.red.withOpacity(0.3);
                icon = const Icon(Icons.close, color: Colors.red);
              }

              return Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    Expanded(child: Text(answer.text)),
                    if (icon != null) icon,
                  ],
                ),
              );
            }),
            if (question.explanation != null) ...[
              const SizedBox(height: 16),
              Text(
                'Penjelasan:',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(question.explanation!),
            ]
          ],
        ),
      ),
    );
  }
}
