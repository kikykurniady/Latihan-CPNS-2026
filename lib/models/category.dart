import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final IconData icon;
  final int questionCount;
  final Color backgroundColor;

  const Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.questionCount,
    required this.backgroundColor,
  });
}
