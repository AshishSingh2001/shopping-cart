import 'package:flutter/material.dart';

import 'package:shopping_cart/domain/items/item.dart';
import 'package:shopping_cart/domain/items/item_repository.dart';
import 'package:shopping_cart/infrastucture/items/fake_items.dart';

class FakeItemsRepository extends ItemsRepository {
  final _currentItems = fakeItems;

  @override
  Future<void> fetchAll({bool force = false}) async {
    if (_currentItems.isEmpty || force) {
      await Future.delayed(const Duration(milliseconds: 400), () => null);
    }

    addToStream(_currentItems);
  }

  @override
  Future<Item?> getOne(int itemId) async {
    if (_currentItems.isEmpty) {
      await fetchAll();
    }
    try {
      return _currentItems.firstWhere((item) => item.id == itemId);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Item?> toggleAddToCart(int itemId) async {
    await Future.delayed(const Duration(milliseconds: 200), () => null);

    final item = await getOne(itemId);
    if (item == null) {
      return null;
    }

    final toggledItem = item.copyWith(isInCart: !item.isInCart);
    updateCurrentItemsWith(toggledItem);

    addToStream(_currentItems);

    return toggledItem;
  }

  @visibleForTesting
  void updateCurrentItemsWith(Item item) {
    final index = _currentItems.indexWhere((it) => it.id == item.id);
    if (index != -1) {
      _currentItems[index] = item;
    }
  }
}
