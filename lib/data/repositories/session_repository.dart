import '../data/database/app_database.dart';
import '../models/quiz_session.dart';

abstract class SessionRepository {
  Future<void> saveSession(QuizSession session);
  Future<List<QuizSession>> getSessions();
  Future<List<QuizSession>> getByCategory(String category);
  Future<List<QuizSession>> getRecent(int limit);
}

class SessionRepositoryImpl implements SessionRepository {
  final AppDatabase _db;

  SessionRepositoryImpl(this._db);

  @override
  Future<void> saveSession(QuizSession session) {
    final sessionCompanion = SessionsTableCompanion.fromModel(session);
    return _db.sessionDao.insertSession(sessionCompanion);
  }

  @override
  Future<List<QuizSession>> getSessions() {
    return _db.sessionDao.getAllSessions();
  }

  @override
  Future<List<QuizSession>> getByCategory(String category) {
    return _db.sessionDao.getSessionsByCategory(category);
  }

  @override
  Future<List<QuizSession>> getRecent(int limit) {
    return _db.sessionDao.getRecentSessions(limit);
  }
}

extension on SessionsTableCompanion {
  static SessionsTableCompanion fromModel(QuizSession model) {
    return SessionsTableCompanion.insert(
      id: model.id,
      category: model.category,
      subTopic: Value(model.subTopic),
      startTime: model.startTime,
      endTime: Value(model.endTime),
      totalQuestions: model.totalQuestions,
      correctCount: model.correctCount,
      wrongCount: model.wrongCount,
      skippedCount: model.skippedCount,
      score: model.score,
      durationSeconds: model.durationSeconds,
      isRandom: model.isRandom,
    );
  }
}
