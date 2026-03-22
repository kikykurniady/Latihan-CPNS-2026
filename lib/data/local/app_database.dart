import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:latihan_cpns/data/local/daos/question_dao.dart';
import 'package:latihan_cpns/data/local/tables.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart'; // Penting!

@DriftDatabase(tables: [Questions], daos: [QuestionDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // ... (sisa kode)

  Future<bool> isFirstRun() async {
    // Implementasi pengecekan
    return true;
  }

  Future<void> seedQuestions() async {
    // Implementasi seeding data
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));
    return NativeDatabase(file);
  });
}
