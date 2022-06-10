import 'package:shopping_cart/app/cubit/app_state.dart';
import 'package:shopping_cart/enum/app_languages.dart';
import 'package:shopping_cart/enum/app_theme.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class AppCubit extends HydratedCubit<AppState> {
  AppCubit()
      : super(const AppState(
            appTheme: AppTheme.dark, appLanguage: AppLanguage.en));

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    final String themeName = json['theme'];
    final String languageName = json['language'];

    AppTheme theme = AppTheme.values.firstWhere(
        (theme) => theme.name == themeName,
        orElse: () => AppTheme.dark);

    AppLanguage language = AppLanguage.values.firstWhere(
        (language) => language.name == languageName,
        orElse: () => AppLanguage.en);
    return AppState(appTheme: theme, appLanguage: language);
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    final Map<String, dynamic> theme = {
      'theme': state.appTheme.toString(),
      'language': state.appLanguage.toString()
    };

    return theme;
  }

  void changeTheme({required AppTheme theme}) {
    emit(AppState(appTheme: theme, appLanguage: state.appLanguage));
  }

  void changeLanguage({required AppLanguage language}) {
    emit(AppState(appLanguage: language, appTheme: state.appTheme));
  }
}
