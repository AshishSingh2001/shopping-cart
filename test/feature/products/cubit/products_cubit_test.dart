import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:shopping_cart/domain/items/item.dart';
import 'package:shopping_cart/feature/products/cubit/products_cubit.dart';
import '../../../helper.dart';

void main() {
  late MockItemsRepository mockItemsRepository;

  final items = <Item>[
    const Item(
      id: 1,
      name: 'first',
      description: 'first description',
      price: 10,
      isInCart: true,
    ),
    const Item(
      id: 2,
      name: 'second',
      description: 'second description',
      price: 20,
      isInCart: false,
    ),
  ];

  group('Products Cubit', () {
    setUp(() {
      mockItemsRepository = MockItemsRepository();
      when(
        () => mockItemsRepository.items,
      ).thenAnswer((invocation) => Stream.value(items));

      when(
        () => mockItemsRepository.fetchAll(),
      ).thenAnswer((invocation) async => Future<void>);

      when(
        () => mockItemsRepository.getOne(any()),
      ).thenAnswer(
        (invocation) async =>
            items[invocation.positionalArguments.first as int],
      );

      when(
        () => mockItemsRepository.toggleAddToCart(any()),
      ).thenAnswer(
        (invocation) async => Item.fake(),
      );
    });
    ProductsCubit buildCubit() {
      return ProductsCubit(itemsRepository: mockItemsRepository);
    }

    group(
      'contructor',
      () {
        test('works properly', () {
          expect(buildCubit, returnsNormally);
        });

        test('has correct initial state', () {
          expect(buildCubit().state, equals(const ProductsState.loading()));
        });
      },
    );

    group('Products Cubit load requested', () {
      blocTest<ProductsCubit, ProductsState>(
        'fetches all todos',
        build: buildCubit,
        act: (ProductsCubit bloc) => bloc.load(),
        verify: (_) {
          verify(() => mockItemsRepository.fetchAll()).called(1);
        },
      );

      blocTest<ProductsCubit, ProductsState>(
        'emit state with updated todos',
        build: buildCubit,
        act: (ProductsCubit bloc) => bloc.load(),
        expect: () => [
          const ProductsState.loading(),
          ProductsState.loaded(products: items, cartCount: 1),
        ],
      );
    });

    group('products Cubit toggleFavorite requested', () {
      blocTest<ProductsCubit, ProductsState>(
        'fetches all todos',
        build: buildCubit,
        act: (ProductsCubit bloc) => bloc.toggleAddToCart(1),
        verify: (_) {
          verify(
            () => mockItemsRepository.toggleAddToCart(1),
          ).called(1);
        },
      );
    });
  });
}
