import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/quiz_result.dart';

class BreakdownCard extends StatelessWidget {
  final QuizResult result;

  const BreakdownCard({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStatItem(
              context,
              icon: Icons.check_circle_outline,
              label: 'Benar',
              value: result.correctAnswers,
              color: Colors.green,
            ),
            _buildStatItem(
              context,
              icon: Icons.highlight_off,
              label: 'Salah',
              value: result.wrongAnswers,
              color: Colors.red,
            ),
            _buildStatItem(
              context,
              icon: Icons.remove_circle_outline,
              label: 'Dilewati',
              value: result.unanswered,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(BuildContext context,
      {required IconData icon,
      required String label,
      required int value,
      required Color color}) {
    return Column(
      children: [
        Icon(icon, color: color, size: 32),
        const SizedBox(height: 8),
        Text(
          value.toString(),
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
