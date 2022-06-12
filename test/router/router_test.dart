import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockingjay/mockingjay.dart';

import 'package:shopping_cart/feature/cart/view/cart_page.dart';
import 'package:shopping_cart/feature/products/products.dart';
import '../helper.dart';

void main() {
  late MockItemsRepository mockItemsRepository;
  group('Routing', () {
    setUp(() {
      mockItemsRepository = MockItemsRepository();
      when(
        () => mockItemsRepository.items,
      ).thenAnswer((invocation) => const Stream.empty());
      when(
        () => mockItemsRepository.fetchAll(),
      ).thenAnswer((invocation) async => Future<void>);
    });

    testWidgets('renders ProductsView via routers redirect form /',
        (tester) async {
      await tester.pumpRouterApp(
        location: '/',
        itemsRepository: mockItemsRepository,
      );
      await tester.pump();
      expect(find.byType(ProductsPage), findsOneWidget);
      expect(find.byType(BackButton), findsNothing);
    });

    testWidgets('renders ProductsView via router', (tester) async {
      await tester.pumpRouterApp(
        location: '/products',
        itemsRepository: mockItemsRepository,
      );
      await tester.pump();
      expect(find.byType(ProductsPage), findsOneWidget);
      expect(find.byType(BackButton), findsNothing);
    });

    testWidgets('renders CartView via router with back button', (tester) async {
      await tester.pumpRouterApp(
        location: '/products/cart',
        itemsRepository: mockItemsRepository,
      );
      await tester.pump();
      expect(find.byType(CartPage), findsOneWidget);
      expect(find.byType(BackButton), findsOneWidget);
    });
  });
}
