import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightThemeData =>
      ThemeData(colorSchemeSeed: AppColors.themeColor);

  static ThemeData get darkThemeData => ThemeData(
    colorSchemeSeed: AppColors.themeColor,
    brightness: Brightness.dark,
  );
}
