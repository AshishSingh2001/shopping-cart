import 'package:flutter_test/flutter_test.dart';

import 'package:shopping_cart/domain/items/model/item.dart';

void main() {
  group('Items', () {
    late Item fakeItem;
    late Map<String, dynamic> fakeItemJson;

    group('generate fake items', () {
      setUp(() {
        fakeItem = Item.fake();
      });
      test('returns Item type', () {
        expect(fakeItem, isA<Item>());
      });
    });

    group('Item from json', () {
      setUp(() {
        fakeItem = Item.fake();
        fakeItemJson = fakeItem.toJson();
      });
      test('returns Item type', () {
        expect(Item.fromJson(fakeItemJson), isA<Item>());
      });

      test('returns expected item', () {
        expect(Item.fromJson(fakeItemJson), fakeItem);
      });
    });
  });
}
