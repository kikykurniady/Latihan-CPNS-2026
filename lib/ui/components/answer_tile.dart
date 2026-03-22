import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns/core/constants/app_colors.dart';
import 'package:latihan_cpns/models/answer.dart';
import 'package:latihan_cpns/models/question.dart';
import 'package:latihan_cpns/providers/quiz_provider.dart';

class AnswerTile extends ConsumerWidget {
  final Question question;
  final Answer answer;

  const AnswerTile({super.key, required this.question, required this.answer});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAnswers = ref.watch(selectedAnswersProvider);
    final isSubmitted = ref.watch(submittedQuizProvider);
    final isSelected = selectedAnswers[question.id] == answer.text;

    Color tileColor = Colors.white;
    IconData? trailingIcon;

    if (isSubmitted) {
      if (answer.isCorrect) {
        tileColor = Colors.green.withOpacity(0.5);
        trailingIcon = Icons.check_circle;
      } else if (isSelected && !answer.isCorrect) {
        tileColor = Colors.red.withOpacity(0.5);
        trailingIcon = Icons.cancel;
      }
    } else {
      if (isSelected) {
        tileColor = AppColors.primary.withOpacity(0.3);
      }
    }

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: tileColor,
      child: ListTile(
        title: Text(answer.text),
        trailing: trailingIcon != null ? Icon(trailingIcon, color: Colors.white) : null,
        onTap: isSubmitted
            ? null
            : () {
                ref.read(selectedAnswersProvider.notifier).update((state) {
                  final newState = Map<String, String>.from(state);
                  newState[question.id] = answer.text;
                  return newState;
                });
              },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
