part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.loading() = _CartLoading;

  const factory CartState.loaded({
    required List<Item> products,
    required int cartCount,
    required int cartTotal,
  }) = _CartLoaded;
}
