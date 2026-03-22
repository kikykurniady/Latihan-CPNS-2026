import 'package:drift/drift.dart';

class SessionsTable extends Table {
  TextColumn get id => text()();
  TextColumn get category => text()();
  TextColumn get subTopic => text().nullable()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime().nullable()();
  IntColumn get totalQuestions => integer()();
  IntColumn get correctCount => integer()();
  IntColumn get wrongCount => integer()();
  IntColumn get skippedCount => integer()();
  RealColumn get score => real()();
  IntColumn get durationSeconds => integer()();
  BoolColumn get isRandom => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}
