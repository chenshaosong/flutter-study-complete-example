import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/themeColor.dart';

class ThemeColor with ChangeNotifier {
  Color _themeColor = allColor[3];
  Color get themeColor => _themeColor;

  void setTheme(int num) {
    _themeColor= allColor[num];
    notifyListeners();
  }
}