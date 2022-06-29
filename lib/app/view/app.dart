import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:shopping_cart/app/cubit/app_cubit.dart';
import 'package:shopping_cart/app/cubit/app_state.dart';
import 'package:shopping_cart/domain/items/item_repository.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/infrastucture/items/items_repository.dart';
import 'package:shopping_cart/router.dart';
import 'package:shopping_cart/utils/app_themes.dart';
import 'package:shopping_cart/utils/enum.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppViewState createState() => AppViewState();
}

class AppViewState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
          // Hide keyboard
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: RepositoryProvider<ItemsRepository>(
        create: (context) => FakeItemsRepository(),
        child: BlocProvider<AppCubit>(
          create: (context) => AppCubit(),
          child: BlocBuilder<AppCubit, AppState>(
            builder: (ctx, state) {
              // final locale = getAppLocale(
              //   appLanguage: state.appLanguage ?? AppLanguage.en,
              // );
              final locale = Locale(
                state.appLanguage?.name ?? AppLanguage.en.name,
              );
              return MaterialApp.router(
                // useInheritedMediaQuery: true,
                debugShowCheckedModeBanner: false,
                theme: appThemes[state],
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: locale,
                routerDelegate: router.routerDelegate,
                routeInformationParser: router.routeInformationParser,
              );
            },
          ),
        ),
      ),
    );
  }
}
