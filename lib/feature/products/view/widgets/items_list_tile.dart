import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_cart/domain/items/item.dart';
import 'package:shopping_cart/feature/products/cubit/products_cubit.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FittedBox(
        fit: BoxFit.cover,
        child: CachedNetworkImage(
          imageUrl: item.imageUrl!,
          placeholder: (_, __) => const CircularProgressIndicator(),
          errorWidget: (_, __, dynamic ___) => const Center(
            child: FlutterLogo(),
          ),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      trailing: IconButton(
        onPressed: () => context.read<ProductsCubit>().toggleAddToCart(item.id),
        icon: item.isInCart ? const Icon(Icons.check) : const Icon(Icons.add),
      ),
      title: Text(item.name),
      subtitle: Text('\$ ${item.price}'),
      // onTap: () => context.go('/item/:id'),
    );
  }
}
