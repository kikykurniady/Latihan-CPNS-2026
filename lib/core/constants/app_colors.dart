import 'package:flutter/material.dart';

class AppColors {
  // Main Palette
  static const Color primary = Color(0xFF0D47A1); // Deep Blue
  static const Color accent = Color(0xFFFFC107); // Amber
  static const Color background = Color(0xFFF5F5F5); // Light Gray
  static const Color card = Colors.white;
  static const Color text = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color disabled = Color(0xFFBDBDBD);
  static const Color divider = Color(0xFFE0E0E0);

  // Category Colors
  static const Color twkColor = Color(0xFF1565C0); // Blue 700
  static const Color tiuColor = Color(0xFF6A1B9A); // Purple 800
  static const Color tkpColor = Color(0xFF00695C); // Teal 800

  // Semantic Colors
  static const Color success = Color(0xFF388E3C); // Green
  static const Color error = Color(0xFFD32F2F);   // Red
  static const Color warning = Color(0xFFFFA000); // Amber

  // Streak Banner Gradient
  static const Color streakGradientStart = Color(0xFF1E88E5);
  static const Color streakGradientEnd = Color(0xFF0D47A1);

  // Progress Bar Colors
  static Color progressLow = Colors.red[400]!;
  static Color progressMid = Colors.orange[400]!;
  static Color progressHigh = Colors.green[400]!;
  
  static Color getCategoryColor(String category) {
    switch (category.toUpperCase()) {
      case 'TWK':
        return twkColor;
      case 'TIU':
        return tiuColor;
      case 'TKP':
        return tkpColor;
      default:
        return textSecondary;
    }
  }
}
