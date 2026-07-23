import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryGreen = Color(0xFF1F8D4C);
  static const Color darkGreen = Color(0xFF135C33);
  static const Color lightGreen = Color(0xFFE8F7EE);
  static const Color accentGreen = Color(0xFF34A853);
  static const Color surfaceWhite = Color(0xFFFFFFFF);
  static const Color background = Color(0xFFF6FBF7);
  static const Color textPrimary = Color(0xFF163127);
  static const Color textSecondary = Color(0xFF6B7A72);
  static const Color border = Color(0xFFE3ECE7);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Segoe UI',
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryGreen,
        primary: primaryGreen,
        secondary: accentGreen,
        surface: surfaceWhite,
        surfaceContainer: background,
        onSurface: textPrimary,
      ),
      cardTheme: const CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: textPrimary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: primaryGreen, width: 1.5),
        ),
      ),
    );
  }
}
