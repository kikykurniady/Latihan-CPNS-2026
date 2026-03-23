import 'package:flutter/material.dart';
import 'package:latihan_cpns_2026/core/constants/dummy_data.dart';
import 'package:latihan_cpns_2026/models/category.dart';
import 'package:latihan_cpns_2026/ui/components/sub_topic_tile.dart';
import 'package:latihan_cpns_2026/ui/components/empty_state.dart';

class SubTopicScreen extends StatelessWidget {
  final Category category;

  const SubTopicScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final subTopics = dummySubTopics
        .where((subTopic) => subTopic.categoryId == category.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        backgroundColor: category.backgroundColor,
      ),
      body: subTopics.isEmpty
          ? const EmptyState()
          : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: subTopics.length,
              itemBuilder: (context, index) {
                return SubTopicTile(subTopic: subTopics[index]);
              },
            ),
    );
  }
}
