import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns_2026/models/answer.dart';
import 'package:latihan_cpns_2026/models/question.dart';
import 'package:latihan_cpns_2026/providers/quiz_provider.dart';

class OptionTile extends ConsumerWidget {
  final Answer answer;
  final Question question;
  final int answerIndex;

  const OptionTile({
    super.key,
    required this.answer,
    required this.question,
    required this.answerIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizProvider);
    final quizNotifier = ref.read(quizProvider.notifier);

    final optionState = quizNotifier.getOptionState(question.id, answerIndex);

    final Color borderColor;
    final Color backgroundColor;
    final Widget? leading;

    switch (optionState) {
      case 'selected':
        borderColor = Colors.blue.shade700;
        backgroundColor = Colors.blue.withOpacity(0.1);
        leading = null;
        break;
      case 'correct':
        borderColor = Colors.green.shade700;
        backgroundColor = Colors.green.withOpacity(0.1);
        leading = Icon(Icons.check_circle, color: Colors.green.shade700);
        break;
      case 'wrong':
        borderColor = Colors.red.shade700;
        backgroundColor = Colors.red.withOpacity(0.1);
        leading = Icon(Icons.cancel, color: Colors.red.shade700);
        break;
      case 'correctNotSelected':
        borderColor = Colors.green.shade700;
        backgroundColor = Colors.transparent;
        leading = null;
        break;
      default:
        borderColor = Colors.grey.shade400;
        backgroundColor = Colors.transparent;
        leading = null;
    }

    return GestureDetector(
      onTap: quizState.showExplanation
          ? null
          : () => quizNotifier.selectAnswer(question.id, answerIndex),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
              color: borderColor, width: optionState == 'unselected' ? 1 : 2),
        ),
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            children: [
              if (leading != null) ...[
                leading,
                const SizedBox(width: 12),
              ],
              Expanded(child: Text(answer.text)),
            ],
          ),
        ),
      ),
    );
  }
}
