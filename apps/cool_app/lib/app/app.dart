import 'package:domain_package/domain_package.dart';
import 'package:flutter/material.dart';
import 'package:monorepo_styling/common/style/app_style/app_theme/app_theme.dart';
import 'package:monorepo_styling/common/style/app_style/app_theme/app_theme_settings.dart';
import 'package:monorepo_styling/view/home_page/home_page.dart';

part 'app_provider.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          theme: switch (state) {
            DarkThemeSelectedState() =>
              AppThemeData.resolveWith(AppThemeSettings.dark()),
            LightThemeSelectedState() =>
              AppThemeData.resolveWith(AppThemeSettings.light()),
          },
          home: const HomePage(),
        );
      },
    );
  }
}
