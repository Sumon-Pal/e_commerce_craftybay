import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightThemeData => ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    scaffoldBackgroundColor: Colors.white,
    filledButtonTheme: _filledButtonThemeData,
    inputDecorationTheme: _inputDecorationThemeData,
    textTheme: _textThemeData,
  );

  static ThemeData get darkThemeData => ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: Brightness.dark,
    filledButtonTheme: _filledButtonThemeData,
    inputDecorationTheme: _inputDecorationThemeData,
    textTheme: _textThemeData,
  );

  static FilledButtonThemeData get _filledButtonThemeData =>
      FilledButtonThemeData(
        style: FilledButton.styleFrom(
          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.symmetric(vertical: 12),
          textStyle: TextStyle(fontSize: 16, color: Colors.white),
          backgroundColor: AppColors.themeColor,
        ),
      );

  static InputDecorationTheme get _inputDecorationThemeData =>
      InputDecorationTheme(
        hintStyle: TextStyle(
          fontWeight: FontWeight.w300
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.themeColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.themeColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.themeColor),
        ),
      );
  static TextTheme get _textThemeData => TextTheme(
    titleLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold
    )
  );
}
