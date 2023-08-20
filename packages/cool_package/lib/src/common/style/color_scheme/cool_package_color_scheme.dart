import 'package:flutter/material.dart';

part 'cool_package_color_scheme_extension.dart';

///This class includes all the colors needed to correctly build the entire
///interface in this package.

class CoolPackageColorScheme extends ThemeExtension<CoolPackageColorScheme> {
  final Color elementColor1;
  final Color elementColor2;
  final Color elementColor3;
  final Color elementColor4;
  final Color elementColor5;
  final Color elementColor6;
  final Color elementColor7;
  final Color elementColor8;
  final Color elementColor9;
  final Color footnoteTextColor;
  final Color appBarTextColor;

  CoolPackageColorScheme({
    required this.elementColor1,
    required this.elementColor2,
    required this.elementColor3,
    required this.elementColor4,
    required this.elementColor5,
    required this.elementColor6,
    required this.elementColor7,
    required this.elementColor8,
    required this.elementColor9,
    required this.footnoteTextColor,
    required this.appBarTextColor,
  });

  @override
  CoolPackageColorScheme lerp(
          covariant CoolPackageColorScheme? other, double t) =>
      _lerp(other, t);
}
