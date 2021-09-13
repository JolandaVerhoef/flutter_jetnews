/*
 * Copyright 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JetnewsThemeData {
  static ThemeData _myThemeData = ThemeData(
    textTheme: jetnewsTextTheme,
    primaryColor: _red700,
  );

  static ThemeData lightThemeData = _myThemeData.copyWith(
    brightness: Brightness.light,
    colorScheme: _lightColorScheme,
  );

  static ThemeData darkThemeData = _myThemeData.copyWith(
    brightness: Brightness.dark,
    colorScheme: _darkColorScheme,
  );

  // Fonts
  static final jetnewsTextTheme = TextTheme(
    headline4: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600, fontSize: 30, letterSpacing: 0),
    headline5: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600, fontSize: 24, letterSpacing: 0),
    headline6: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600, fontSize: 20, letterSpacing: 0),
    subtitle1: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600, fontSize: 16, letterSpacing: 0.15),
    subtitle2: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500, fontSize: 14, letterSpacing: 0.1),
    bodyText1: GoogleFonts.domine(
        fontWeight: FontWeight.normal, fontSize: 16, letterSpacing: 0.5),
    bodyText2: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500, fontSize: 14, letterSpacing: 0.25),
    button: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600, fontSize: 14, letterSpacing: 1.25),
    caption: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500, fontSize: 12, letterSpacing: 0.4),
    overline: GoogleFonts.montserrat(
        fontWeight: FontWeight.w600, fontSize: 12, letterSpacing: 1),
  );

  // colors
  static const _red200 = Color(0xfff297a2);
  static const _red300 = Color(0xffea6d7e);
  static const _red700 = Color(0xffdd0d3c);
  static const _red800 = Color(0xffd00036);
  static const _red900 = Color(0xffc20029);

  static const ColorScheme _lightColorScheme = ColorScheme.light(
    primary: _red700,
    primaryVariant: _red900,
    onPrimary: Colors.white,
    secondary: _red700,
    secondaryVariant: _red900,
    onSecondary: Colors.white,
    error: _red800,
  );

  static const ColorScheme _darkColorScheme = ColorScheme.dark(
      primary: _red300,
      primaryVariant: _red700,
      onPrimary: Colors.black,
      secondary: _red300,
      onSecondary: Colors.black,
      error: _red200,
  );

}
