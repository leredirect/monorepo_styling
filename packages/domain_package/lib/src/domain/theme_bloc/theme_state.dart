part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {}

class DarkThemeSelectedState extends ThemeState {}

class LightThemeSelectedState extends ThemeState {}
