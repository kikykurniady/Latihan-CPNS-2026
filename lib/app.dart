import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:latihan_cpns/core/constants/app_strings.dart';
import 'package:latihan_cpns/core/theme.dart';
import 'package:latihan_cpns/providers/router_provider.dart';
import 'package:latihan_cpns/providers/streak_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: AppStrings.appName,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: ref.watch(appRouterProvider),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('id', 'ID'),
        Locale('en', 'US'),
      ],
      builder: (context, child) {
        // check and update streak when the app is first opened
        ref.read(streakProvider.notifier).checkAndUpdateStreak();
        return child!;
      },
    );
  }
}
