import 'package:flutter/material.dart';
import 'package:weather_ui/themes/theme.dart';

class ThemeProvider with ChangeNotifier {
  bool _isSelected = false;
  bool get isSeleted => _isSelected;

  ThemeData _themeData = lightMode;
  ThemeData get themedata => _themeData;

  void toogleTheme() {
    if (_themeData != lightMode) {
      _themeData = lightMode;
    } else {
      _themeData = darkMode;
    }
    _isSelected = !_isSelected;
    notifyListeners();
  }
}
