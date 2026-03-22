import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_cpns/core/constants/app_colors.dart';

class AppTheme {
  static final _textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(fontSize: 57, fontWeight: FontWeight.bold),
    displayMedium: GoogleFonts.poppins(fontSize: 45, fontWeight: FontWeight.bold),
    displaySmall: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.bold),
    headlineLarge: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
    headlineSmall: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
    titleSmall: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.normal),
    labelLarge: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold),
    labelMedium: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.bold),
    labelSmall: GoogleFonts.poppins(fontSize: 11, fontWeight: FontWeight.bold),
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    scaffoldBackgroundColor: AppColors.background,
    textTheme: _textTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: _textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),
  );
}
