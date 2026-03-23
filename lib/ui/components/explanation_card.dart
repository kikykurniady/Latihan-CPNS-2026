import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/question.dart';

class ExplanationCard extends StatelessWidget {
  final Question question;
  final bool isLastQuestion;
  final VoidCallback onContinue;

  const ExplanationCard({
    super.key,
    required this.question,
    required this.isLastQuestion,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    final correctAnswer = question.answers.firstWhere((a) => a.isCorrect);

    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.check_circle, color: Colors.green),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Jawaban benar: ${correctAnswer.text}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            if (question.explanation != null &&
                question.explanation!.isNotEmpty) ...[
              const Divider(height: 20),
              Text(
                'Penjelasan:',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(question.explanation!),
            ],
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: onContinue,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(isLastQuestion ? 'Selesai' : 'Lanjut'),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
