import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/questions_table.dart';

part 'question_dao.g.dart';

@DriftAccessor(tables: [QuestionsTable])
class QuestionDao extends DatabaseAccessor<AppDatabase> with _$QuestionDaoMixin {
  QuestionDao(AppDatabase db) : super(db);

  Future<List<Question>> getAllQuestions() => select(questionsTable).get();

  Future<List<Question>> getByCategory(String category) {
    return (select(questionsTable)..where((tbl) => tbl.category.equals(category))).get();
  }

  Future<List<Question>> getBySubTopic(String category, String subTopic) {
    return (select(questionsTable)
      ..where((tbl) => tbl.category.equals(category))
      ..where((tbl) => tbl.subTopic.equals(subTopic)))
        .get();
  }

  Future<List<Question>> getBookmarked() {
    return (select(questionsTable).join([
      innerJoin(db.bookmarksTable, db.bookmarksTable.questionId.equalsExp(questionsTable.id))
    ])).map((row) => row.readTable(questionsTable)).get();
  }

  Future<Question> getById(int id) {
    return (select(questionsTable)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<void> insertAll(List<QuestionsTableCompanion> questions) async {
    await batch((batch) {
      batch.insertAll(questionsTable, questions);
    });
  }
}
