import 'package:flutter/material.dart';

class ThemeRepository {
  static final ThemeRepository _themeRepository = ThemeRepository._internal();

  factory ThemeRepository() {
    return _themeRepository;
  }

  ThemeRepository._internal();

  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode changeTheme() => _themeMode == ThemeMode.dark
      ? _themeMode = ThemeMode.light
      : _themeMode = ThemeMode.dark;
}
