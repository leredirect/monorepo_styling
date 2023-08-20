import 'package:cool_package/cool_package.dart';
import 'package:flutter/material.dart';

///This class implements the [cool_package] color scheme for this application.
class CoolPackageColorLibrary extends CoolPackageColorScheme {
  CoolPackageColorLibrary({
    required super.elementColor1,
    required super.elementColor2,
    required super.elementColor3,
    required super.elementColor4,
    required super.elementColor5,
    required super.elementColor6,
    required super.elementColor7,
    required super.elementColor8,
    required super.elementColor9,
    required super.footnoteTextColor,
    required super.appBarTextColor,
  });

  factory CoolPackageColorLibrary.dark() => CoolPackageColorLibrary(
        elementColor1: const Color(0xFFB8C480),
        elementColor2: const Color(0xFFD4E79E),
        elementColor3: const Color(0xFF8D94BA),
        elementColor4: const Color(0xFF9A7AA0),
        elementColor5: const Color(0xFF7F5DEC),
        elementColor6: const Color(0xFFE46299),
        elementColor7: const Color(0xFFCECACA),
        elementColor8: const Color(0xFFCE5757),
        elementColor9: const Color(0xFF5EA353),
        footnoteTextColor: const Color(0xFFCEC3C3),
        appBarTextColor: const Color(0xFFFFFFFF),
      );

  factory CoolPackageColorLibrary.light() => CoolPackageColorLibrary(
        elementColor1: const Color(0xFFCC7777),
        elementColor2: const Color(0xFF599958),
        elementColor3: const Color(0xFF80A8B9),
        elementColor4: const Color(0xFF3C26AA),
        elementColor5: const Color(0xFF725AC1),
        elementColor6: const Color(0xFF5F1A37),
        elementColor7: const Color(0xFF04030F),
        elementColor8: const Color(0xFF707070),
        elementColor9: const Color(0xFFB5AD81),
        footnoteTextColor: const Color(0xFFA19797),
        appBarTextColor: const Color(0xFF000000),
      );
}
