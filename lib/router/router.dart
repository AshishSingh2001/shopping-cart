import 'package:go_router/go_router.dart';

import 'package:shopping_cart/env/env.dart';
import 'package:shopping_cart/feature/cart/view/cart_page.dart';
import 'package:shopping_cart/feature/products/view/products_page.dart';

class RouteName {
  RouteName._();

  static const String home = '/';
  static const String products = 'products';
  static const String itemDetails = '/item';
  static const String cart = 'cart';
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: RouteName.home,
      path: '/',
      redirect: (_) => '/products',
    ),
    GoRoute(
      name: RouteName.products,
      path: '/products',
      builder: (_, __) => const ProductsPage(),
      routes: [
        GoRoute(
          name: RouteName.cart,
          path: 'cart',
          builder: (_, __) => const CartPage(),
        ),
      ],
    ),
    // GoRoute(
    //   path: '${RoutePath.itemDetails}/:id',
    // ),
  ],
  debugLogDiagnostics: !prodEnv,
);

void goTo({required String path}) {
  router.go(path);
}

void goBack() {
  router.pop();
}
