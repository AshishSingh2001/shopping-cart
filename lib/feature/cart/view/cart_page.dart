import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_cart/domain/items/item_repository.dart';
import 'package:shopping_cart/feature/cart/cart.dart';
import 'package:shopping_cart/feature/cart/view/widgets/cart_list_tile.dart';
import 'package:shopping_cart/generated/l10n.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CartCubit(itemsRepository: context.read<ItemsRepository>())..load(),
      child: const CartView(),
    );
  }
}

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).cart),
      ),
      body: const CartList(),
    );
  }
}

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        late Widget nextView;
        state.when(
          loading: () {
            nextView = const Center(child: CircularProgressIndicator());
          },
          loaded: (cartItems, _, cartTotal) {
            Widget cartList;
            if (cartItems.isNotEmpty) {
              cartList = Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) => CartListTile(
                        key: ValueKey(cartItems[index]),
                        item: cartItems[index],
                      ),
                      itemCount: cartItems.length,
                    ),
                  ),
                ],
              );
            } else {
              cartList = Center(
                child: Text(
                  S.of(context).addSomethingToCart,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }
            nextView = Column(
              children: [
                Expanded(child: cartList),
                const Divider(height: 4, color: Colors.black),
                CartTotal(cartTotal: cartTotal),
              ],
            );
          },
        );
        return nextView;
      },
    );
  }
}

class CartTotal extends StatelessWidget {
  const CartTotal({super.key, required this.cartTotal});
  final int cartTotal;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$$cartTotal',
              style: const TextStyle(
                fontSize: 48,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 24),
            TextButton(
              onPressed: () {
                final message = cartTotal != 0
                    ? S.of(context).paymentSucces
                    : S.of(context).addSomethingToCart;

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
              style: TextButton.styleFrom(primary: Colors.white),
              child: Text(
                '${S.of(context).buy} ',
                style: const TextStyle(
                  fontSize: 38,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
