part of 'cool_package_text_theme.dart';

extension _CoolPackageTextThemeExtension on CoolPackageTextTheme {
  CoolPackageTextTheme _lerp(CoolPackageTextTheme? other, double t) {
    if (other is! CoolPackageTextTheme) return this;
    return CoolPackageTextTheme(
      coolPageFootnoteStyle: other.coolPageFootnoteStyle.copyWith(
        color: Color.lerp(
            coolPageFootnoteStyle.color, other.coolPageFootnoteStyle.color, t),
      ),
    );
  }
}
