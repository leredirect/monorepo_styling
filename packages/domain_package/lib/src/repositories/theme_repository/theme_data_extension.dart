import 'package:domain_package/src/domain/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';

extension ThemeModeExtension on ThemeMode {
  ThemeState asState() {
    switch (this) {
      case ThemeMode.dark:
        return DarkThemeSelectedState();
      case ThemeMode.light:
        return LightThemeSelectedState();
      case ThemeMode.system:
        throw UnimplementedError();
    }
  }
}
