import 'package:flutter/material.dart';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:shopping_cart/domain/items/item_repository.dart';
import 'package:shopping_cart/feature/cart/cart.dart';
import 'package:shopping_cart/feature/products/products.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/router.dart';

class MockCartCubit extends MockCubit<CartState> implements CartCubit {}

class MockProductsCubit extends MockCubit<ProductsState>
    implements ProductsCubit {}

class MockItemsRepository extends Mock implements ItemsRepository {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp({
    CartCubit? cartCubit,
    ProductsCubit? productsCubit,
    ItemsRepository? itemsRepository,
    required Widget child,
  }) {
    return pumpWidget(
      MaterialApp(
        home: RepositoryProvider.value(
          value: itemsRepository ?? MockItemsRepository(),
          child: MultiBlocProvider(
            providers: [
              if (cartCubit != null)
                BlocProvider.value(value: cartCubit)
              else
                BlocProvider(create: (_) => MockCartCubit()),
              if (productsCubit != null)
                BlocProvider.value(value: productsCubit)
              else
                BlocProvider(create: (_) => MockProductsCubit()),
            ],
            child: child,
          ),
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale('en'),
      ),
    );
  }
}

extension PumpRouterApp on WidgetTester {
  Future<void> pumpRouterApp({
    String? location,
    CartCubit? cartCubit,
    ProductsCubit? productsCubit,
    ItemsRepository? itemsRepository,
  }) {
    return pumpWidget(
      RepositoryProvider.value(
        value: itemsRepository ?? MockItemsRepository(),
        child: MultiBlocProvider(
          providers: [
            if (cartCubit != null)
              BlocProvider.value(value: cartCubit)
            else
              BlocProvider(create: (_) => MockCartCubit()),
            if (productsCubit != null)
              BlocProvider.value(value: productsCubit)
            else
              BlocProvider(create: (_) => MockProductsCubit()),
          ],
          child: MaterialApp.router(
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: const Locale('en'),
            routeInformationParser: testRouter(location).routeInformationParser,
            routerDelegate: testRouter(location).routerDelegate,
          ),
        ),
      ),
    );
  }
}
