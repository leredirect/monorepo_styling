import 'package:cool_package/src/common/extensions/build_context.dart';
import 'package:flutter/material.dart';

import 'dot_widget.dart';

class StripeWidget extends StatelessWidget {
  const StripeWidget({
    super.key,
    required this.dotColors,
  });

  final List<Color> dotColors;

  @override
  Widget build(BuildContext context) {
    final aC = context.appColorTheme();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 75,
      width: context.width * 0.7,
      color: aC.surface,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          dotColors.length,
          (index) => DotWidget(color: dotColors[index]),
        ),
      ),
    );
  }
}
