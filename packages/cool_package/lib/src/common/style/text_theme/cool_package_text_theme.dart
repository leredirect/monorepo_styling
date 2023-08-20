import 'package:flutter/material.dart';

part 'cool_package_text_theme_extension.dart';

///This class includes all the text styles needed to correctly build the entire
///interface in this package.

class CoolPackageTextTheme extends ThemeExtension<CoolPackageTextTheme> {
  TextStyle coolPageFootnoteStyle;

  CoolPackageTextTheme({
    required this.coolPageFootnoteStyle,
  });

  @override
  CoolPackageTextTheme lerp(covariant CoolPackageTextTheme? other, double t) =>
      _lerp(other, t);
}
