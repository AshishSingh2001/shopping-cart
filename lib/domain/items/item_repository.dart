import 'dart:async';

import 'package:shopping_cart/domain/items/model/item.dart';

abstract class ItemsRepository {
  final _controller = StreamController<List<Item>>.broadcast();

  Stream<List<Item>> get items => _controller.stream;

  void addToStream(List<Item> items) => _controller.sink.add(items);

  Future<void> fetchAll({bool force = false});
  Future<Item?> getOne(int itemId);
  Future<Item?> toggleAddToCart(int itemId);
}
