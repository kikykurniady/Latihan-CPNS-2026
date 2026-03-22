import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns/providers/quiz_provider.dart';

class CountdownTimer extends ConsumerWidget {
  const CountdownTimer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeLeft = ref.watch(quizProvider.select((state) => state.timeLeftInSeconds));

    final int minutes = timeLeft ~/ 60;
    final int seconds = timeLeft % 60;

    final String formattedTime = 
        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    final Color timerColor = timeLeft <= 60 ? Colors.red : Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;

    return Row(
      children: [
        const Icon(Icons.timer_outlined, size: 18),
        const SizedBox(width: 4),
        Text(
          formattedTime,
          style: TextStyle(
            color: timerColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
