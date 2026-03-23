import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/quiz_result.dart';

class PassingGradeCard extends StatelessWidget {
  final QuizResult result;

  const PassingGradeCard({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final isPassing = result.isPassing;
    final score = result.finalScore;
    final passingGrade = result.passingGrade;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ambang Batas Kelulusan',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildScoreIndicator(
                  context,
                  title: 'Nilai Kamu',
                  score: score,
                  icon: isPassing ? Icons.check_circle : Icons.cancel,
                  color: isPassing ? Colors.green : Colors.red,
                ),
                _buildScoreIndicator(
                  context,
                  title: 'Min. Kelulusan',
                  score: passingGrade.toDouble(),
                  icon: Icons.flag,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 16),
            LinearProgressIndicator(
              value: score / passingGrade,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                  isPassing ? Colors.green : Colors.red),
              minHeight: 8,
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                isPassing
                    ? 'Selamat, kamu memenuhi syarat!'
                    : 'Jangan menyerah, coba lagi!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isPassing ? Colors.green : Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildScoreIndicator(
    BuildContext context, {
    required String title,
    required double score,
    required IconData icon,
    required Color color,
  }) {
    return Row(
      children: [
        Icon(icon, color: color, size: 28),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodySmall),
            Text(
              score.toStringAsFixed(0),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
