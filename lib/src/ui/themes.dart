import '../ui/typography.dart' as typography;
import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightThemeData = new ThemeData(
      primaryColor: Color(0xFFDD0D3C), textTheme: typography.appTextTheme);

  static ThemeData darkThemeData = new ThemeData(
      primaryColor: Color(0xFFDD0D3C), textTheme: typography.appTextTheme);
}
