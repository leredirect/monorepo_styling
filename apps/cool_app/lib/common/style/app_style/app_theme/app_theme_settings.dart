import 'package:flutter/material.dart';
import 'package:monorepo_styling/common/style/app_style/app_colors.dart';
import 'package:monorepo_styling/common/style/app_style/app_text_theme.dart';
import 'package:monorepo_styling/common/style/packages_style/cool_package_style/cool_package_color_library.dart';
import 'package:monorepo_styling/common/style/packages_style/cool_package_style/cool_package_text_theme.dart';

///This class using as a dependency injector to build an instance of [ThemeData].
///All [ThemeExtension]'s for separate packages must be listed here as well.

class AppThemeSettings {
  final AppColors appColors;
  final AppTextTheme appTextTheme;
  final CoolPackageColorLibrary coolPackageColors;
  final CoolAppPackageTextLibrary coolPackageTextTheme;
  final Brightness brightness;

  const AppThemeSettings({
    required this.appColors,
    required this.coolPackageColors,
    required this.appTextTheme,
    required this.coolPackageTextTheme,
    required this.brightness,
  });

  factory AppThemeSettings.dark() {
    final appColors = AppColors.dark();
    final packageColors = CoolPackageColorLibrary.dark();
    return AppThemeSettings(
      appColors: appColors,
      appTextTheme: AppTextTheme.library(appColors.textPrimaryColor),
      coolPackageColors: packageColors,
      coolPackageTextTheme:
          CoolAppPackageTextLibrary.withColorScheme(packageColors),
      brightness: Brightness.dark,
    );
  }

  factory AppThemeSettings.light() {
    final appColors = AppColors.light();
    final packageColors = CoolPackageColorLibrary.light();
    return AppThemeSettings(
      appColors: appColors,
      appTextTheme: AppTextTheme.library(appColors.textPrimaryColor),
      coolPackageColors: packageColors,
      coolPackageTextTheme:
          CoolAppPackageTextLibrary.withColorScheme(packageColors),
      brightness: Brightness.light,
    );
  }
}
