part of 'cool_package_color_scheme.dart';

extension _CoolPackageColorSchemeExtension on CoolPackageColorScheme {
  CoolPackageColorScheme _lerp(CoolPackageColorScheme? other, double t) {
    if (other is! CoolPackageColorScheme) return this;
    return CoolPackageColorScheme(
      elementColor1: Color.lerp(elementColor1, other.elementColor1, t)!,
      elementColor2: Color.lerp(elementColor2, other.elementColor2, t)!,
      elementColor3: Color.lerp(elementColor3, other.elementColor3, t)!,
      elementColor4: Color.lerp(elementColor4, other.elementColor4, t)!,
      elementColor5: Color.lerp(elementColor5, other.elementColor5, t)!,
      elementColor6: Color.lerp(elementColor6, other.elementColor6, t)!,
      elementColor7: Color.lerp(elementColor7, other.elementColor7, t)!,
      elementColor8: Color.lerp(elementColor8, other.elementColor8, t)!,
      elementColor9: Color.lerp(elementColor9, other.elementColor9, t)!,
      appBarTextColor: Color.lerp(appBarTextColor, other.appBarTextColor, t)!,
      footnoteTextColor:
          Color.lerp(footnoteTextColor, other.footnoteTextColor, t)!,
    );
  }
}
