import 'package:drift/drift.dart';
import 'package:latihan_cpns/data/local/type_converters.dart';

@DataClassName('Question')
class Questions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get category => text()();
  TextColumn get subTopic => text()();
  TextColumn get difficulty => text()();
  TextColumn get question => text()();
  TextColumn get options => text().map(const ListStringConverter())(); // Terapkan di sini
  IntColumn get correctAnswer => integer()();
  TextColumn get explanation => text()();
  TextColumn get tkpWeights => text().nullable().map(const NullableListIntConverter())(); // Dan di sini

  @override
  String get tableName => 'questions';
}
