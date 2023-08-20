import 'package:domain_package/src/repositories/theme_repository/theme_data_extension.dart';
import 'package:domain_package/src/repositories/theme_repository/theme_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(DarkThemeSelectedState()) {
    on<ChangeThemeEvent>(_onChangeThemeEvent);
  }

  final ThemeRepository _themeRepository = ThemeRepository();

  void _onChangeThemeEvent(
    ChangeThemeEvent event,
    Emitter<ThemeState> emit,
  ) =>
      emit(_themeRepository.changeTheme().asState());
}
