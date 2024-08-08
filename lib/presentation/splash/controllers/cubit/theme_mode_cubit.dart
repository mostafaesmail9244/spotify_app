import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:spotify_app/core/constants/constants.dart';
import 'package:spotify_app/core/helper/cache_helper.dart';

part 'theme_mode_state.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  ThemeModeCubit() : super(ThemeModeInitial());

  bool isDark = CacheHelper.getData(key: Constants.themeMode) ?? false;
  final Logger _logger = Logger();

  void changeThemeMode() {
    isDark = !isDark;

    _logger.d('Theme mode changed: $isDark');
    CacheHelper.put(
      key: Constants.themeMode,
      value: isDark,
    ).then((value) {
      emit(ChangeThemeModeState());
    });
  }
}
