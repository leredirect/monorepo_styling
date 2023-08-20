import 'package:cool_package/src/common/extensions/build_context.dart';
import 'package:cool_package/src/widgets/cool_page/widgets/stripe_widget.dart';
import 'package:domain_package/domain_package.dart';
import 'package:flutter/material.dart';

part 'footnote_widget.dart';

part 'stripes_widget.dart';

part 'texts_widget.dart';

class CoolPage extends StatelessWidget {
  const CoolPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cool Page from cool_package',
          style: context.packageTextTheme().coolPageAppBarStyle,
        ),
        automaticallyImplyLeading: false,
        actions: [
          Switch(
            value: context.isDarkMode,
            onChanged: (bool value) =>
                context.read<ThemeBloc>().add(ChangeThemeEvent()),
          ),
        ],
      ),
      body: const Column(
        children: [
          _TextsWidget(),
          _StripesWidget(),
          _FootnoteWidget(),
        ],
      ),
    );
  }
}
