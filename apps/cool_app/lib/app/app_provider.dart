part of 'app.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (_) => ThemeBloc(),
      child: const App(),
    );
  }
}
