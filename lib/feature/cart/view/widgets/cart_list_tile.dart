import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_cart/domain/items/item.dart';
import 'package:shopping_cart/feature/cart/cart.dart';

class CartListTile extends StatelessWidget {
  const CartListTile({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedNetworkImage(
        imageUrl: item.imageUrl!,
        placeholder: (_, __) => const CircularProgressIndicator(),
        errorWidget: (_, __, dynamic ___) => const Center(
          child: FlutterLogo(),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      trailing: IconButton(
        icon: const Icon(
          Icons.remove_circle_outline,
        ),
        onPressed: () => context.read<CartCubit>().toggleAddToCart(item.id),
      ),
      title: Text(item.name),
      subtitle: Text('\$ ${item.price}'),
      // onTap: () => context.go('item/:id'),
    );
  }
}
