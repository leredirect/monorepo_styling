part of 'cool_page.dart';

class _TextsWidget extends StatelessWidget {
  const _TextsWidget();

  @override
  Widget build(BuildContext context) {
    const defaultText = 'Lorem ipsum dolor sit amet';
    final tT = context.appTextTheme();
    final styles = [
      tT.displayLarge,
      tT.displayMedium,
      tT.displaySmall,
      tT.bodyLarge,
      tT.bodyMedium,
      tT.bodySmall,
    ];
    return Expanded(
      flex: 340,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          styles.length,
          (index) => Text(
            defaultText,
            maxLines: 1,
            softWrap: false,
            style: styles[index],
          ),
        ),
      ),
    );
  }
}
