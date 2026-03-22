import 'package:flutter/material.dart';

class SubTopic {
  final String id;
  final String categoryId;
  final String name;
  final int totalQuestions;
  final int completedQuestions;

  const SubTopic({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.totalQuestions,
    this.completedQuestions = 0,
  });
}
