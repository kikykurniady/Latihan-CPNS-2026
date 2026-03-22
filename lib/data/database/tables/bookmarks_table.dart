import 'package:drift/drift.dart';

class BookmarksTable extends Table {
  IntColumn get questionId => integer()();
  DateTimeColumn get savedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {questionId};
}
