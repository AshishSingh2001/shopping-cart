import 'package:faker/faker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required int id,
    required String name,
    required String description,
    @Default(false) bool isInCart,
    required int price,
    String? imageUrl,
  }) = _Item;

  factory Item.fake() => Item(
        id: faker.randomGenerator.integer(10000),
        name: faker.food.dish(),
        description: faker.lorem.sentence(),
        isInCart: faker.randomGenerator.integer(5) == 0,
        price: faker.randomGenerator.integer(10, min: 2) * 100,
        imageUrl:
            'https://picsum.photos/id/${faker.randomGenerator.integer(500)}/100',
      );

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
