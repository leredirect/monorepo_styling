import 'package:flutter/material.dart';

///This class contains all the colors that will be used in the [ThemeData] class.
///it may also contain other colors that are not included in the [ColorScheme]
class AppColors {
  final Color backgroundColor;
  final Color primaryColor;
  final Color appBarColor;
  final Color surfaceColor;
  final Color textPrimaryColor;

  AppColors({
    required this.backgroundColor,
    required this.primaryColor,
    required this.appBarColor,
    required this.surfaceColor,
    required this.textPrimaryColor,
  });

  factory AppColors.dark() => AppColors(
        backgroundColor: const Color(0xFF4A4242),
        primaryColor: const Color(0xFFFFFFFF),
        appBarColor: const Color(0xFF4A4242),
        surfaceColor: const Color(0xFF5B5757),
        textPrimaryColor: const Color(0xFFFFFFFF),
      );

  factory AppColors.light() => AppColors(
        backgroundColor: const Color(0xFFE2ADAA),
        primaryColor: const Color(0xFF000000),
        appBarColor: const Color(0xFFE2ADAA),
        surfaceColor: const Color(0xFFF0C4C2),
        textPrimaryColor: const Color(0xFF000000),
      );
}
