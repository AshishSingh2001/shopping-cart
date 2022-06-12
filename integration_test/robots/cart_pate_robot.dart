import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopping_cart/feature/cart/view/cart_page.dart';
import 'package:shopping_cart/feature/cart/view/widgets/cart_list_tile.dart';

class CartPageRobot {
  CartPageRobot(this.tester);
  WidgetTester tester;

  void verifyCartPage() {
    expect(find.byType(CartPage), findsOneWidget);
  }

  int _getCartListTilesCount() {
    final finder =
        find.byType(CartListTile, skipOffstage: false); // Without quotes!
    final count = tester.widgetList<CartListTile>(finder).length;
    return count;
  }

  Future<void> verifyRemoveCartItem() async {
    final prevCount = _getCartListTilesCount();
    final removeButton = find.byIcon(Icons.remove_circle_outline);
    await tester.tap(removeButton.first);
    await tester.pumpAndSettle();
    final currCount = _getCartListTilesCount();
    expect(prevCount - 1, currCount);
  }
}
