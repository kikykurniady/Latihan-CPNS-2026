import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/database/app_database.dart';
import '../data/repositories/bookmark_repository.dart';
import '../data/repositories/question_repository.dart';
import '../data/repositories/session_repository.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

final questionRepositoryProvider = Provider<QuestionRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return QuestionRepositoryImpl(db);
});

final sessionRepositoryProvider = Provider<SessionRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return SessionRepositoryImpl(db);
});

final bookmarkRepositoryProvider = Provider<BookmarkRepository>((ref) {
  final db = ref.watch(appDatabaseProvider);
  return BookmarkRepositoryImpl(db);
});
