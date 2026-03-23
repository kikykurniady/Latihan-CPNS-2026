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
  Future<List<Question>> getAll() async {
    final data = await _db.questionDao.getAllQuestions();
    return data.map((d) => Question.fromOptions(
      id: d.id,
      category: d.category,
      question: d.question,
      options: d.options,
      correctAnswer: d.correctAnswer,
      explanation: d.explanation,
      subTopic: d.subTopic,
    )).toList();
  }

  @override
  Future<List<Question>> getByCategory(String category) async {
    final data = await _db.questionDao.getByCategory(category);
    return data.map((d) => Question.fromOptions(
      id: d.id,
      category: d.category,
      question: d.question,
      options: d.options,
      correctAnswer: d.correctAnswer,
      explanation: d.explanation,
      subTopic: d.subTopic,
    )).toList();
  }

  @override
  Future<List<Question>> getBySubTopic(String category, String subTopic) async {
    final data = await _db.questionDao.getBySubTopic(category, subTopic);
    return data.map((d) => Question.fromOptions(
      id: d.id,
      category: d.category,
      question: d.question,
      options: d.options,
      correctAnswer: d.correctAnswer,
      explanation: d.explanation,
      subTopic: d.subTopic,
    )).toList();
  }

  @override
  Future<List<Question>> getBookmarked() async {
    final data = await _db.questionDao.getBookmarked();
    return data.map((d) => Question.fromOptions(
      id: d.id,
      category: d.category,
      question: d.question,
      options: d.options,
      correctAnswer: d.correctAnswer,
      explanation: d.explanation,
      subTopic: d.subTopic,
    )).toList();
  }

  @override
  Future<Question> getById(int id) async {
    final data = await _db.questionDao.getById(id);
    return Question.fromOptions(
      id: data.id,
      category: data.category,
      question: data.question,
      options: data.options,
      correctAnswer: data.correctAnswer,
      explanation: data.explanation,
      subTopic: data.subTopic,
    );
  }
}
