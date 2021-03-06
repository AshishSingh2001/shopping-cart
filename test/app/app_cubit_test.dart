import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_cart/app/cubit/app_cubit.dart';
import 'package:shopping_cart/app/cubit/app_state.dart';
import 'package:shopping_cart/utils/enum.dart';
import '../helper/mock_storage.dart';

void main() {
  group('AppCubit - Test hydrated (fromJson/toJson)', () {
    late AppCubit appCubit;

    setUp(() async {
      appCubit = await mockHydratedStorage(AppCubit.new);
    });

    test('Default app state should be returned', () {
      expect(
        appCubit.fromJson(<String, String>{'theme': '', 'language': ''}),
        const AppState(appTheme: AppTheme.dark, appLanguage: AppLanguage.en),
      );
    });
  });

  group('AppCubit - Test app theme', () {
    late AppCubit appCubit;

    setUp(() async {
      appCubit = await mockHydratedStorage(AppCubit.new);
    });

    test('Change theme to ${AppTheme.dark}', () {
      appCubit.changeTheme(theme: AppTheme.dark);
      expect(appCubit.state.appTheme, AppTheme.dark);
    });

    test('Change theme to ${AppTheme.light}', () {
      appCubit.changeTheme(theme: AppTheme.light);
      expect(appCubit.state.appTheme, AppTheme.light);
    });
  });

  group('AppCubit - Test app language', () {
    late AppCubit appCubit;

    setUp(() async {
      appCubit = await mockHydratedStorage(AppCubit.new);
    });

    test('Default app language is ${AppLanguage.en}', () {
      expect(appCubit.state.appLanguage, AppLanguage.en);
    });

    test('Change language to ${AppLanguage.en}', () {
      appCubit.changeLanguage(language: AppLanguage.en);
      expect(appCubit.state.appLanguage, AppLanguage.en);
    });
  });
}
