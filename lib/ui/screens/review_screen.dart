import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/question.dart';
import 'package:latihan_cpns_2026/ui/components/review_question_card.dart';

class ReviewScreen extends StatelessWidget {
  final List<Question> questions;

  const ReviewScreen({super.key, required this.questions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tinjau Jawaban'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          // You might need to fetch the selected answer for each question from your result data.
          // For now, this is a placeholder.
          return ReviewQuestionCard(question: question);
        },
      ),
    );
  }
}
