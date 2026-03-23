import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/question.dart';
import 'package:latihan_cpns_2026/ui/components/result_question_card.dart';

class ResultsScreen extends StatelessWidget {
  final List<Question> questions;
  final Map<String, String> selectedAnswers;

  const ResultsScreen({
    super.key,
    required this.questions,
    required this.selectedAnswers,
  });

  @override
  Widget build(BuildContext context) {
    int correctAnswers = 0;
    for (final question in questions) {
      final selectedAnswer = selectedAnswers[question.id];
      if (selectedAnswer != null) {
        final answer =
            question.answers.firstWhere((a) => a.text == selectedAnswer);
        if (answer.isCorrect) {
          correctAnswers++;
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Kuis'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            child: Column(
              children: [
                Text('Skor Anda:',
                    style: Theme.of(context).textTheme.headlineMedium),
                Text('$correctAnswers / ${questions.length}',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                final question = questions[index];
                final selectedAnswerText = selectedAnswers[question.id];
                return ResultQuestionCard(
                  question: question,
                  selectedAnswerText: selectedAnswerText,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
