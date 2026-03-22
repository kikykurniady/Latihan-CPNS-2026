import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns/core/constants/dummy_data.dart';
import 'package:latihan_cpns/models/question.dart';

// Holds the user's selected answers for each question
final selectedAnswersProvider = StateProvider<Map<String, String>>((ref) => ({}));

// Provides the list of questions for a given sub-topic
final questionsProvider = Provider.family<List<Question>, String>((ref, subTopicId) {
  return dummyQuestions.where((q) => q.subTopicId == subTopicId).toList();
});

// Tracks whether the user has submitted their answers for the current question
final submittedQuizProvider = StateProvider<bool>((ref) => false);
