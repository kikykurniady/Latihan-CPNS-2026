import 'package:flutter/material.dart';
import 'package:latihan_cpns/core/constants/app_colors.dart';
import 'package:latihan_cpns/models/sub_topic.dart';
import 'package:latihan_cpns/ui/screens/quiz_screen.dart';

class SubTopicTile extends StatelessWidget {
  final SubTopic subTopic;

  const SubTopicTile({super.key, required this.subTopic});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final double progress = subTopic.totalQuestions > 0
        ? subTopic.completedQuestions / subTopic.totalQuestions
        : 0.0;

    String buttonText = 'Mulai';
    Color buttonColor = AppColors.primary;
    if (progress > 0 && progress < 1) {
      buttonText = 'Lanjutkan';
      buttonColor = AppColors.accent;
    } else if (progress == 1) {
      buttonText = 'Selesai';
      buttonColor = AppColors.disabled;
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subTopic.name,
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 10,
                      backgroundColor: AppColors.disabled.withOpacity(0.3),
                      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: progress == 1
                    ? null
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuizScreen(subTopic: subTopic),
                          ),
                        );
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  foregroundColor: AppColors.text,
                ),
                child: Text(buttonText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
