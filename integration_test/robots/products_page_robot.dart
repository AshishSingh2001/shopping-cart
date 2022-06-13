import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_cart/feature/products/products.dart';

class ProductsPageRobot {
  ProductsPageRobot(this.tester);

  final WidgetTester tester;

  /// verify if the page contains productPage
  void verifyProductsPage() {
    expect(find.byType(ProductsPage), findsOneWidget);
  }

  /// if the page has at least on ItemListTile
  void verifyItemsTile() {
    expect(find.byType(ItemListTile), findsWidgets);
  }

  /// get cart value
  int _getCartValue() {
    final cartBadge = find.byType(Badge);
    expect(cartBadge, findsOneWidget);
    final badge = cartBadge.evaluate().single.widget as Badge;
    final text = badge.badgeContent! as Text;
    return int.parse(text.data!);
  }

  /// Verify the cart value increases when
  /// a item is added to cart
  Future<void> verifyToggleAddToCart() async {
    final addToCart = find.byIcon(Icons.add);
    expect(addToCart, findsWidgets);
    final prev = _getCartValue();
    await tester.tap(addToCart.first);
    await tester.pumpAndSettle();
    final curr = _getCartValue();
    expect(prev + 1, curr);
  }

  /// navigate to the cart page
  Future<void> verifyTapCartButton() async {
    final cartButton = find.byIcon(Icons.shopping_cart);
    expect(cartButton, findsOneWidget);
    await tester.tap(cartButton);
    await tester.pumpAndSettle();
  }
}
