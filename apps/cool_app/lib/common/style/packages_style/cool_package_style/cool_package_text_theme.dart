import 'package:cool_package/cool_package.dart';
import 'package:flutter/material.dart';

///This class implements the [cool_package] text styles for this application.
class CoolAppPackageTextLibrary extends CoolPackageTextTheme {
  CoolAppPackageTextLibrary({
    required super.coolPageFootnoteStyle,
  });

  factory CoolAppPackageTextLibrary.withColorScheme(
          CoolPackageColorScheme colorScheme) =>
      CoolAppPackageTextLibrary(
        coolPageFootnoteStyle:
            TextStyle(fontSize: 12, color: colorScheme.footnoteTextColor),
      );
}
