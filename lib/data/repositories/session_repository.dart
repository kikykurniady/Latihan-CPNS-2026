import 'package:drift/drift.dart';

import '../database/app_database.dart';
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
    final sessionCompanion = SessionsTableCompanion.insert(
      id: session.id,
      category: session.category,
      subTopic: Value(session.subTopic),
      startTime: session.startTime,
      endTime: Value(session.endTime),
      totalQuestions: session.totalQuestions,
      correctCount: session.correctCount,
      wrongCount: session.wrongCount,
      skippedCount: session.skippedCount,
      score: session.score,
      durationSeconds: session.durationSeconds,
      isRandom: session.isRandom,
    );
    return _db.sessionDao.insertSession(sessionCompanion);
  }

  @override
  Future<List<QuizSession>> getSessions() async {
    final data = await _db.sessionDao.getAllSessions();
    return data.map((d) => _convertToQuizSession(d)).toList();
  }

  @override
  Future<List<QuizSession>> getByCategory(String category) async {
    final data = await _db.sessionDao.getSessionsByCategory(category);
    return data.map((d) => _convertToQuizSession(d)).toList();
  }

  @override
  Future<List<QuizSession>> getRecent(int limit) async {
    final data = await _db.sessionDao.getRecentSessions(limit);
    return data.map((d) => _convertToQuizSession(d)).toList();
  }

  QuizSession _convertToQuizSession(SessionsTableData data) {
    return QuizSession(
      id: data.id,
      category: data.category,
      subTopic: data.subTopic,
      startTime: data.startTime,
      endTime: data.endTime,
      totalQuestions: data.totalQuestions,
      correctCount: data.correctCount,
      wrongCount: data.wrongCount,
      skippedCount: data.skippedCount,
      score: data.score,
      durationSeconds: data.durationSeconds,
      isRandom: data.isRandom,
    );
  }
}
