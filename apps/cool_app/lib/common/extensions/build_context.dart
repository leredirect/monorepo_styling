import 'package:flutter/material.dart';
import 'package:monorepo_styling/common/style/app_style/app_colors.dart';

extension BuildContextExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  AppColors get appColors => isDarkMode ? AppColors.dark() : AppColors.light();
}
