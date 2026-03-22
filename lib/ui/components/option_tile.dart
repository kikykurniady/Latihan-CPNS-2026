import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns/models/answer.dart';
import 'package:latihan_cpns/models/question.dart';
import 'package:latihan_cpns/providers/quiz_provider.dart';

enum OptionState { 
  initial, 
  selected, 
  correct, 
  wrong, 
  correctNotSelected 
}

class OptionTile extends ConsumerWidget {
  final Answer answer;
  final Question question;

  const OptionTile({super.key, required this.answer, required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizState = ref.watch(quizProvider);
    final quizNotifier = ref.read(quizProvider.notifier);

    final state = quizNotifier.getOptionState(answer, question);

    final Color borderColor;
    final Color backgroundColor;
    final Widget? leading;

    switch (state) {
      case OptionState.selected:
        borderColor = Colors.blue.shade700;
        backgroundColor = Colors.blue.withOpacity(0.1);
        leading = null;
        break;
      case OptionState.correct:
        borderColor = Colors.green.shade700;
        backgroundColor = Colors.green.withOpacity(0.1);
        leading = Icon(Icons.check_circle, color: Colors.green.shade700);
        break;
      case OptionState.wrong:
        borderColor = Colors.red.shade700;
        backgroundColor = Colors.red.withOpacity(0.1);
        leading = Icon(Icons.cancel, color: Colors.red.shade700);
        break;
      case OptionState.correctNotSelected:
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
          : () => quizNotifier.selectAnswer(answer, question),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: borderColor, width: state == OptionState.initial ? 1 : 2),
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
