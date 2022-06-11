part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.loading() = _ProductsLoading;

  const factory ProductsState.loaded({
    required List<Item> products,
    required int cartCount,
  }) = _ProductsLoaded;
}
