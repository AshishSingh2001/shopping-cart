// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:shopping_cart/domain/items/item.dart';
// import 'package:shopping_cart/domain/items/item_repository.dart';

// part 'items_details_state.dart';
// part 'items_details_cubit.freezed.dart';

// class ItemsDetailsCubit extends Cubit<ItemsDetailsState> {
//   ItemsDetailsCubit({
//     required ItemsRepository itemsRepository,
//     required int itemId,
//   })  : _itemsRepository = itemsRepository,
//         _itemId = itemId,
//         super(const ItemsDetailsState.loading());

//   final ItemsRepository _itemsRepository;
//   final int _itemId;

//   Future<void> load({Item? item}) async {
//     emit(ItemsDetailsState.loading(item: item));

//     final currentItem = await _itemsRepository.getOne(_itemId);
//     if (currentItem != null) {
//       emit(ItemsDetailsState.loaded(item: currentItem));
//     }
//   }

//   Future<void> toggleAddToCart() async {
//     emit(ItemsDetailsState.loading(item: state.item));

//     final currentItem = await _itemsRepository.toggleAddToCart(_itemId);

//     if (currentItem != null) {
//       emit(ItemsDetailsState.loaded(item: currentItem));
//     }
//   }

//   Future<void> removeFromCart() async {
//     // emit(ItemsDetailsState.loading(item: state.item));

//     await _itemsRepository.removeFromCart(_itemId);

//     // if (currentItem != null) {
//     //   emit(ItemsDetailsState.loaded(item: currentItem));
//     // }
//   }
// }
