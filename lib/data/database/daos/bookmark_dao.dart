import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/bookmarks_table.dart';

part 'bookmark_dao.g.dart';

@DriftAccessor(tables: [BookmarksTable])
class BookmarkDao extends DatabaseAccessor<AppDatabase> with _$BookmarkDaoMixin {
  BookmarkDao(AppDatabase db) : super(db);

  Future<void> addBookmark(int questionId) {
    return into(bookmarksTable).insert(BookmarksTableCompanion(
      questionId: Value(questionId),
      savedAt: Value(DateTime.now()),
    ));
  }

  Future<void> removeBookmark(int questionId) {
    return (delete(bookmarksTable)..where((tbl) => tbl.questionId.equals(questionId))).go();
  }

  Future<bool> isBookmarked(int questionId) async {
    final result = await (select(bookmarksTable)..where((tbl) => tbl.questionId.equals(questionId))).getSingleOrNull();
    return result != null;
  }

  Stream<List<int>> getAllBookmarked() {
    return select(bookmarksTable).watch().map((rows) => rows.map((row) => row.questionId).toList());
  }
}
