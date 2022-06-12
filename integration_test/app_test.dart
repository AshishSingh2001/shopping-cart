import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shopping_cart/main.dart' as app;

import 'robots/cart_pate_robot.dart';
import 'robots/products_page_robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end to end tests', () {
    ProductsPageRobot productsPageRobot;
    CartPageRobot cartPageRobot;
    testWidgets('add product to cart', (tester) async {
      app.main();
      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();

      productsPageRobot = ProductsPageRobot(tester);
      cartPageRobot = CartPageRobot(tester);

      productsPageRobot
        ..verifyProductsPage()
        ..verifyItemsTile();
      await productsPageRobot.verifyToggleAddToCart();

      await productsPageRobot.verifyTapCartButton();

      cartPageRobot.verifyCartPage();
      await cartPageRobot.verifyRemoveCartItem();
    });
  });
}
