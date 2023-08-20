import 'package:flutter/material.dart';
import 'package:monorepo_styling/common/style/app_style/app_theme/app_theme_settings.dart';

///Method [resolveWith] builds a correct instance based on the given settings.
///Pay attention that we will not list AppColors and AppTextStyles to extensions
///in order to not provide them to other packages. Only default [TextTheme] and
///[ColorScheme] could be accessed outside of main app via [context].
class AppThemeData {
  static ThemeData resolveWith(AppThemeSettings settings) {
    final appColors = settings.appColors;
    final appTextTheme = settings.appTextTheme;
    return ThemeData(
      brightness: settings.brightness,
      colorScheme: ColorScheme.dark(
        brightness: settings.brightness,
        primary: appColors.primaryColor,
        background: appColors.backgroundColor,
        surface: appColors.surfaceColor,
      ),
      textTheme: appTextTheme.asTextTheme(),
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.appBarColor,
      ),
      scaffoldBackgroundColor: appColors.backgroundColor,
      extensions: [
        settings.coolPackageColors,
        settings.coolPackageTextTheme,
      ],
    );
  }
}
