part of 'cool_page.dart';

class _StripesWidget extends StatelessWidget {
  const _StripesWidget();

  @override
  Widget build(BuildContext context) {
    final pC = context.packageColorTheme();
    final dotColors = [
      (
        a: Alignment.centerLeft,
        v: [pC.elementColor1, pC.elementColor2, pC.elementColor3],
      ),
      (
        a: Alignment.centerRight,
        v: [pC.elementColor4, pC.elementColor5, pC.elementColor6],
      ),
      (
        a: Alignment.centerLeft,
        v: [pC.elementColor7, pC.elementColor8, pC.elementColor9],
      ),
    ];
    return Expanded(
      flex: 357,
      child: Column(
        children: List.generate(
          dotColors.length,
          (i) => Align(
            alignment: dotColors[i].a,
            child: StripeWidget(
              dotColors: dotColors[i].v,
            ),
          ),
        ),
      ),
    );
  }
}
