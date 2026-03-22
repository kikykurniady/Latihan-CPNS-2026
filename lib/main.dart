import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:latihan_cpns/app.dart';
import 'package:latihan_cpns/data/local/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 1. Flutter binding
  await MobileAds.instance.initialize(); // 2. AdMob init
  final db = AppDatabase(); // 3. Open the database
  if (await db.isFirstRun()) { // 4. Check for first run
    await db.seedQuestions(); //    Seed if necessary
  }
  runApp(
    ProviderScope(
      overrides: [appDatabaseProvider.overrideWithValue(db)],
      child: const MyApp(),
    ),
  );
}
