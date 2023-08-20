import 'package:flutter/material.dart';

part 'cool_package_text_theme_extension.dart';

///This class includes all the text styles needed to correctly build the entire
///interface in this package.

class CoolPackageTextTheme extends ThemeExtension<CoolPackageTextTheme> {
  final TextStyle coolPageFootnoteStyle;
  final TextStyle coolPageAppBarStyle;

  CoolPackageTextTheme({
    required this.coolPageFootnoteStyle,
    required this.coolPageAppBarStyle,
  });

  @override
  CoolPackageTextTheme lerp(covariant CoolPackageTextTheme? other, double t) =>
      _lerp(other, t);
}
