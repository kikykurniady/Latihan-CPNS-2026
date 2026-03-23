import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/sessions_table.dart';

part 'session_dao.g.dart';

@DriftAccessor(tables: [SessionsTable])
class SessionDao extends DatabaseAccessor<AppDatabase> with _$SessionDaoMixin {
  SessionDao(super.db);

  Future<void> insertSession(SessionsTableCompanion session) =>
      into(sessionsTable).insert(session);

  Future<List<SessionsTableData>> getAllSessions() =>
      select(sessionsTable).get();

  Future<List<SessionsTableData>> getSessionsByCategory(String category) {
    return (select(sessionsTable)
          ..where((tbl) => tbl.category.equals(category)))
        .get();
  }

  Future<List<SessionsTableData>> getRecentSessions(int limit) {
    return (select(sessionsTable)
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.startTime)])
          ..limit(limit))
        .get();
  }
}
