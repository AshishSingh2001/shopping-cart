import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_cart/feature/cart/cart.dart';
import 'package:shopping_cart/feature/products/products.dart';
import 'package:shopping_cart/generated/l10n.dart';
import 'package:shopping_cart/infrastucture/items/items_repository.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ProductsCubit(
            itemsRepository: context.read<FakeItemsRepository>(),
          )..load(),
        ),
        BlocProvider(
          create: (context) => CartCubit(
            itemsRepository: context.read<FakeItemsRepository>(),
          )..load(),
        ),
      ],
      child: const ProductsView(),
    );
  }
}

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).products),
        actions: const [
          CartIcon(),
        ],
      ),
      body: const ProductItemList(),
    );
  }
}

class ProductItemList extends StatelessWidget {
  const ProductItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        late Widget nextView;
        state.when(
          loading: () {
            nextView = const Center(child: CircularProgressIndicator());
          },
          loaded: (items, count) {
            nextView = RefreshIndicator(
              onRefresh: () => context.read<ProductsCubit>().reload(),
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    ItemListTile(item: items[index]),
                itemCount: items.length,
              ),
            );
          },
        );
        return nextView;
      },
    );
  }
}
