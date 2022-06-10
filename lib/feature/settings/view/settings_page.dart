import 'package:shopping_cart/app/cubit/app_cubit.dart';
import 'package:shopping_cart/enum/app_languages.dart';
import 'package:shopping_cart/enum/app_theme.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/theme/app_themes.dart';
import 'package:shopping_cart/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppCubit appCubit = context.watch<AppCubit>();
    final ThemeData? themeData = appThemes[appCubit.state.appTheme];
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: animationDuration),
        color: themeData?.primaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${S.of(context).settings} Mobile',
                style: themeData?.textTheme.headline1,
              ),
              ElevatedButton(
                onPressed: () => _onChangeThemePressed(appCubit, AppTheme.dark),
                child: const Text('Enable Dark Theme'),
              ),
              ElevatedButton(
                onPressed: () =>
                    _onChangeThemePressed(appCubit, AppTheme.light),
                child: const Text('Enable Light Theme'),
              ),
              ElevatedButton(
                onPressed: () =>
                    _onChangeLanguagePressed(appCubit, AppLanguage.en),
                child: const Text('English'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onChangeThemePressed(AppCubit appCubit, AppTheme newTheme) {
    appCubit.changeTheme(theme: newTheme);
  }

  void _onChangeLanguagePressed(AppCubit appCubit, AppLanguage appLanguage) {
    appCubit.changeLanguage(language: appLanguage);
  }
}
