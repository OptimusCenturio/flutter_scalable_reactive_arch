import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  set isDark(bool val) => _isDarkTheme = val;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  /// Light theme
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: AppColors.purple,
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: AppColors.lightPurple,
        ));
  }

  /// Dark theme
  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: AppColors.darkGrey,
        scaffoldBackgroundColor: Colors.black,
        textTheme: ThemeData.dark().textTheme,
        buttonTheme: ButtonThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: AppColors.lightPurple,
        ));
  }
}
