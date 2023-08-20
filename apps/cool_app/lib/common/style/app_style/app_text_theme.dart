///This class is a buffer between the Sketch library and the default TextTheme
///and contains all the basic text styles that must be specified in the
///TextTheme class. It will probably be truncated if the current styles in the
///Sketch library will be renamed according to Material guidelines.

import 'package:flutter/material.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;

  const AppTextTheme({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.body1,
    required this.body2,
    required this.body3,
  });

  ///Accordance between Sketch styles and Material styles
  TextTheme asTextTheme() {
    return TextTheme(
      displayLarge: h1,
      displayMedium: h2,
      displaySmall: h3,
      bodyLarge: body1,
      bodyMedium: body2,
      bodySmall: body3,
    );
  }

  ///Style names and parameters from Sketch
  factory AppTextTheme.library(Color defaultColor) {
    return AppTextTheme(
      h1: TextStyle(
        fontSize: 34,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        color: defaultColor,
      ),
      h2: TextStyle(
        fontSize: 32,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        color: defaultColor,
      ),
      h3: TextStyle(
        fontSize: 30,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        color: defaultColor,
      ),
      body1: TextStyle(
        fontSize: 28,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        color: defaultColor,
      ),
      body2: TextStyle(
        fontSize: 26,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        color: defaultColor,
      ),
      body3: TextStyle(
        fontSize: 24,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        color: defaultColor,
      ),
    );
  }

  @override
  AppTextTheme lerp(covariant final AppTextTheme? other, final double t) =>
      other ?? this;
}
