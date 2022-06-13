import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:shopping_cart/domain/items/item_repository.dart';
import 'package:shopping_cart/domain/items/model/item.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit({
    required ItemsRepository itemsRepository,
  })  : _itemsRepository = itemsRepository,
        super(const CartState.loading()) {
    _subscription = _itemsRepository.items.listen(
      (items) => _cartListUpdated(items: items),
    );
  }

  final ItemsRepository _itemsRepository;
  late final StreamSubscription _subscription;

  Future<void> load({bool force = false}) async {
    emit(const CartState.loading());
    await _itemsRepository.fetchAll(force: force);
  }

  Future<void> toggleAddToCart(int itemId) async {
    await _itemsRepository.toggleAddToCart(itemId);
  }

  Future<void> reload() async => load(force: true);

  void _cartListUpdated({required List<Item> items}) {
    final cartItems = items.where((element) => element.isInCart).toList();
    var cartTotal = 0;
    for (final item in cartItems) {
      cartTotal += item.price;
    }
    // emit only when cart items have changed
    state.when(
      loading: () => emit(
        CartState.loaded(
          products: cartItems,
          cartCount: cartItems.length,
          cartTotal: cartTotal,
        ),
      ),
      loaded: (items, count, total) {
        if (items != cartItems) {
          emit(
            CartState.loaded(
              products: cartItems,
              cartCount: cartItems.length,
              cartTotal: cartTotal,
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
