import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns_2026/core/constants/app_colors.dart';
import 'package:latihan_cpns_2026/providers/quiz_provider.dart';
import 'package:latihan_cpns_2026/ui/components/countdown_timer.dart';

class QuizHeader extends ConsumerWidget {
  final int currentQuestionIndex;
  final int totalQuestions;
  final String category;

  const QuizHeader({
    super.key,
    required this.currentQuestionIndex,
    required this.totalQuestions,
    required this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizProvider);
    final notifier = ref.read(quizProvider.notifier);
    final isBookmarked = state.isCurrentQuestionBookmarked;
    final currentQuestion = state.currentQuestion;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${currentQuestionIndex + 1}/$totalQuestions',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Chip(
            label: Text(
              category,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            backgroundColor: AppColors.getCategoryColor(category),
            padding: const EdgeInsets.symmetric(horizontal: 8),
          ),
          const CountdownTimer(),
          IconButton(
            icon: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_border),
            onPressed: currentQuestion != null
                ? () => notifier.toggleBookmark(currentQuestion.id)
                : null,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
