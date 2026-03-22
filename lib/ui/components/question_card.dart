import 'package:flutter/material.dart';
import 'package:latihan_cpns/models/question.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  const QuestionCard({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          question.questionText,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 16,
            height: 1.5, // Line height
          ),
        ),
      ),
    );
  }
}
