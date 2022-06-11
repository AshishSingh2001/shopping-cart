import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:shopping_cart/domain/items/item.dart';
import 'package:shopping_cart/domain/items/item_repository.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({
    required ItemsRepository itemsRepository,
  })  : _itemsRepository = itemsRepository,
        super(const ProductsState.loading()) {
    _subscription = _itemsRepository.items.listen(
      (items) => _productListUpdated(items: items),
    );
  }

  final ItemsRepository _itemsRepository;
  late final StreamSubscription _subscription;

  Future<void> load({bool force = false}) async {
    emit(const ProductsState.loading());
    await _itemsRepository.fetchAll(force: force);
  }

  Future<void> toggleAddToCart(int itemId) async {
    await _itemsRepository.toggleAddToCart(itemId);
  }

  Future<void> reload() async => load(force: true);

  void _productListUpdated({required List<Item> items}) {
    final cartItems = items.where((element) => element.isInCart).toList();
    // emit only when cart items have changed
    state.when(
      loading: () => emit(
        ProductsState.loaded(
          products: items,
          cartCount: cartItems.length,
        ),
      ),
      loaded: (items, count) {
        if (items != cartItems) {
          emit(
            ProductsState.loaded(
              products: items,
              cartCount: cartItems.length,
            ),
          );
        }
      },
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
