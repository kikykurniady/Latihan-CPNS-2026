import 'dart:convert';
import 'package:drift/drift.dart';

class QuestionsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get category => text()();
  TextColumn get subTopic => text()();
  TextColumn get question => text()();
  TextColumn get options => text().map(const ListConverter())();
  IntColumn get correctAnswer => integer()();
  TextColumn get explanation => text()();
  TextColumn get difficulty => text()();
  TextColumn get tkpWeights =>
      text().map(const ListIntConverter()).nullable()();
}

class ListConverter extends TypeConverter<List<String>, String> {
  const ListConverter();
  @override
  List<String> fromSql(String fromDb) {
    return (json.decode(fromDb) as List).cast<String>();
  }

  @override
  String toSql(List<String> value) {
    return json.encode(value);
  }
}

class ListIntConverter extends TypeConverter<List<int>, String> {
  const ListIntConverter();
  @override
  List<int> fromSql(String fromDb) {
    return (json.decode(fromDb) as List).cast<int>();
  }

  @override
  String toSql(List<int> value) {
    return json.encode(value);
  }
}
