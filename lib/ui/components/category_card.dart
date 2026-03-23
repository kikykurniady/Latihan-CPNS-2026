import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/models/category.dart';
import 'package:latihan_cpns_2026/ui/screens/sub_topic_screen.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubTopicScreen(category: category),
            ),
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: category.backgroundColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: category.backgroundColor, width: 1.5),
          ),
          child: Column(
            children: [
              Icon(
                category.icon,
                color: category.backgroundColor,
                size: 32,
              ),
              const SizedBox(height: 8),
              Text(
                category.name,
                style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: category.backgroundColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                '${category.questionCount} Soal',
                style: textTheme.bodySmall?.copyWith(
                  color: category.backgroundColor.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
