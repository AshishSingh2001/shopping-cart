import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:shopping_cart/feature/cart/cart.dart';
import 'package:shopping_cart/router/router.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        late Widget cartBadge;
        state.when(
          loading: () {
            cartBadge = Badge(
              showBadge: false,
              child: cartIcon(context),
            );
          },
          loaded: (_, cartCount, total) {
            cartBadge = Badge(
              badgeContent: Text(
                cartCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              position: BadgePosition.topEnd(top: 5, end: 5),
              padding: const EdgeInsets.all(3),
              animationType: BadgeAnimationType.fade,
              child: cartIcon(context),
            );
          },
        );
        return cartBadge;
      },
    );
  }

  Widget cartIcon(BuildContext context) {
    return IconButton(
      onPressed: () => context.goNamed(RouteName.cart),
      icon: const Icon(
        Icons.shopping_cart,
        size: 30,
      ),
    );
  }
}
