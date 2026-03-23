import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/quiz_result.dart';

class HeroScore extends StatelessWidget {
  final QuizResult result;

  const HeroScore({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final score = result.finalScore;
    final isPassing = result.isPassing;
    final message = isPassing ? 'Luar Biasa!' : 'Coba Lagi!';
    final color = isPassing ? Colors.green : Colors.orange;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 140,
            width: 140,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: score / 100,
                  strokeWidth: 10,
                  backgroundColor: Colors.white.withOpacity(0.3),
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                ),
                Center(
                  child: FittedBox(
                    child: Text(
                      score.toStringAsFixed(0),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
