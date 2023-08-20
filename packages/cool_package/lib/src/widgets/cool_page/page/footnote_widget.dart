part of 'cool_page.dart';

class _FootnoteWidget extends StatelessWidget {
  const _FootnoteWidget();

  @override
  Widget build(BuildContext context) {
    const footnoteText = 'Maecenas faucibus non leo ac '
        'sodales. Nam aliquam metus sapien.';
    return Expanded(
      flex: 76,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          children: [
            Text(
              footnoteText,
              style: context.packageTextTheme().coolPageFootnoteStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
