import 'package:shopping_cart/app/cubit/app_cubit.dart';
import 'package:shopping_cart/feature/landing/view/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_cart/generated/l10n.dart';

class LandingPageRobot {
  final WidgetTester tester;

  LandingPageRobot(this.tester);

  void verifyAppThemeText() {
    final BuildContext context = tester.element(find.byType(LandingPage));
    final AppCubit appCubit = context.read<AppCubit>();
    expect(find.text(appCubit.state.appTheme.toString()), findsOneWidget);
  }

  void verifyHelloText() {
    final BuildContext context = tester.element(find.byType(LandingPage));
    expect(find.textContaining(S.of(context).hello), findsOneWidget);
  }

  void verifySettingsButton() {
    expect(find.byType(ElevatedButton), findsOneWidget);
  }

  Future<void> verifyTapOnSettingsButton() async {
    final Finder settingsButtonFinder = find.byType(ElevatedButton);

    expect(settingsButtonFinder, findsOneWidget);

    await tester.tap(settingsButtonFinder);
  }
}
