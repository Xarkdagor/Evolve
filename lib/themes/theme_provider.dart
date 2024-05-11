import 'package:evolve/themes/dark_mode.dart';
import 'package:evolve/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // initially light mode

  ThemeData _themeData = lightMode;

  // get current theme

  ThemeData get themeData => _themeData;

  // is current theme dark mode

  bool get isDarkMode => _themeData == darkMode;

  // get the theme

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toggle the theme

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
