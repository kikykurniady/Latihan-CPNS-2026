import '../database/app_database.dart';

abstract class BookmarkRepository {
  Future<void> bookmark(int questionId);
  Future<void> unbookmark(int questionId);
  Future<bool> isBookmarked(int questionId);
  Stream<List<int>> getBookmarkedQuestions();
}

class BookmarkRepositoryImpl implements BookmarkRepository {
  final AppDatabase _db;

  BookmarkRepositoryImpl(this._db);

  @override
  Future<void> bookmark(int questionId) {
    return _db.bookmarkDao.addBookmark(questionId);
  }

  @override
  Future<void> unbookmark(int questionId) {
    return _db.bookmarkDao.removeBookmark(questionId);
  }

  @override
  Future<bool> isBookmarked(int questionId) {
    return _db.bookmarkDao.isBookmarked(questionId);
  }

  @override
  Stream<List<int>> getBookmarkedQuestions() {
    return _db.bookmarkDao.getAllBookmarked();
  }
}
