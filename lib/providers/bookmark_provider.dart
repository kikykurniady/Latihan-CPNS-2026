import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/question.dart';
import 'database_providers.dart';

class BookmarkNotifier extends AsyncNotifier<List<Question>> {
  @override
  FutureOr<List<Question>> build() async {
    final bookmarkedIds = await ref
        .watch(bookmarkRepositoryProvider)
        .getBookmarkedQuestions()
        .first;
    if (bookmarkedIds.isEmpty) return [];

    final questionRepo = ref.read(questionRepositoryProvider);
    final questions =
        await Future.wait(bookmarkedIds.map((id) => questionRepo.getById(id)));
    return questions;
  }

  Future<void> toggle(int questionId) async {
    final bookmarkRepo = ref.read(bookmarkRepositoryProvider);
    final isBookmarked = await bookmarkRepo.isBookmarked(questionId);

    if (isBookmarked) {
      await bookmarkRepo.unbookmark(questionId);
    } else {
      await bookmarkRepo.bookmark(questionId);
    }
    ref.invalidateSelf();
  }

  Future<bool> isBookmarked(int questionId) {
    return ref.read(bookmarkRepositoryProvider).isBookmarked(questionId);
  }

  int getCount() {
    return state.maybeWhen(
      data: (data) => data.length,
      orElse: () => 0,
    );
  }
}

final bookmarkProvider =
    AsyncNotifierProvider<BookmarkNotifier, List<Question>>(
        BookmarkNotifier.new);
