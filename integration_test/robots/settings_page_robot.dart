import 'package:shopping_cart/app/cubit/app_cubit.dart';
import 'package:shopping_cart/enum/app_theme.dart';
import 'package:shopping_cart/feature/settings/view/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

class SettingsPageRobot {
  final WidgetTester tester;

  SettingsPageRobot(this.tester);

  void verify4Buttons() {
    expect(find.byType(ElevatedButton), findsNWidgets(4));
  }

  Future<void> verifyTapOnEnableDarkThem() async {
    final Finder enableDarkThemeButtonFinder = find.text('Enable Dark Theme');

    expect(enableDarkThemeButtonFinder, findsOneWidget);

    await tester.tap(enableDarkThemeButtonFinder);

    final BuildContext context = tester.element(find.byType(SettingsPage));
    final AppCubit appCubit = context.read<AppCubit>();
    expect(appCubit.state.appTheme, AppTheme.dark);
  }
}
