import 'package:cool_package/cool_package.dart';
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  TextTheme appTextTheme() => Theme.of(this).textTheme;

  ColorScheme appColorTheme() => Theme.of(this).colorScheme;

  CoolPackageTextTheme packageTextTheme() =>
      Theme.of(this).extension<CoolPackageTextTheme>()!;

  CoolPackageColorScheme packageColorTheme() =>
      Theme.of(this).extension<CoolPackageColorScheme>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;
}
