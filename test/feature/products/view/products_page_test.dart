import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockingjay/mockingjay.dart';

import 'package:shopping_cart/domain/items/item.dart';
import 'package:shopping_cart/feature/cart/cart.dart';
import 'package:shopping_cart/feature/products/products.dart';
import 'package:shopping_cart/generated/l10n.dart';
import '../../../helper.dart';

void main() {
  late CartCubit cartCubit;
  late ProductsCubit productsCubit;
  late MockItemsRepository mockItemsRepository;

  final items = <Item>[
    const Item(
      id: 1,
      name: 'first',
      description: 'first description',
      price: 10,
      isInCart: true,
    ),
    const Item(
      id: 2,
      name: 'second',
      description: 'second description',
      price: 20,
      isInCart: false,
    ),
  ];

  group('Products Page', () {
    setUp(() {
      mockItemsRepository = MockItemsRepository();
      when(
        () => mockItemsRepository.items,
      ).thenAnswer((invocation) => const Stream.empty());
      when(
        () => mockItemsRepository.fetchAll(),
      ).thenAnswer((invocation) async => Future<void>);
    });
    testWidgets('renders ProductsView', (tester) async {
      await tester.pumpApp(
        itemsRepository: mockItemsRepository,
        child: const ProductsPage(),
      );
      await tester.pump();
      expect(find.byType(ProductsView), findsOneWidget);
    });

    testWidgets('Both bloc subscribe to items repository', (tester) async {
      await tester.pumpApp(
        itemsRepository: mockItemsRepository,
        child: const ProductsPage(),
      );
      await tester.pump();

      verify(() => mockItemsRepository.items).called(2);
    });
  });

  group('ProductsView', () {
    setUp(() {
      productsCubit = MockProductsCubit();
      when(() => productsCubit.state).thenReturn(const ProductsState.loading());

      cartCubit = MockCartCubit();
      when(() => cartCubit.state).thenReturn(const CartState.loading());
    });

    testWidgets('renders app bar with title products', (tester) async {
      await tester.pumpApp(
        child: const ProductsView(),
        itemsRepository: mockItemsRepository,
        productsCubit: productsCubit,
        cartCubit: cartCubit,
      );
      await tester.pump();
      expect(find.byType(AppBar), findsOneWidget);
      expect(
        find.descendant(
          of: find.byType(AppBar),
          matching: find.text(S.current.products),
        ),
        findsOneWidget,
      );
    });

    testWidgets('renders circular loader state', (tester) async {
      await tester.pumpApp(
        child: const ProductsView(),
        itemsRepository: mockItemsRepository,
        productsCubit: productsCubit,
        cartCubit: cartCubit,
      );
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
