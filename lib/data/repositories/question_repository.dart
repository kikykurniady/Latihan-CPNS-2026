import '../../models/question.dart';
import '../database/app_database.dart';

abstract class QuestionRepository {
  Future<List<Question>> getAll();
  Future<List<Question>> getByCategory(String category);
  Future<List<Question>> getBySubTopic(String category, String subTopic);
  Future<List<Question>> getBookmarked();
  Future<Question> getById(int id);
}

class QuestionRepositoryImpl implements QuestionRepository {
  final AppDatabase _db;

  QuestionRepositoryImpl(this._db);

  @override
  Future<List<Question>> getAll() {
    return _db.questionDao.getAllQuestions();
  }

  @override
  Future<List<Question>> getByCategory(String category) {
    return _db.questionDao.getByCategory(category);
  }

  @override
  Future<List<Question>> getBySubTopic(String category, String subTopic) {
    return _db.questionDao.getBySubTopic(category, subTopic);
  }

  @override
  Future<List<Question>> getBookmarked() {
    return _db.questionDao.getBookmarked();
  }

  @override
  Future<Question> getById(int id) {
    return _db.questionDao.getById(id);
  }
}
