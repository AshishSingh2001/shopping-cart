// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> products, int cartCount) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;
}

/// @nodoc
abstract class _$$_ProductsLoadingCopyWith<$Res> {
  factory _$$_ProductsLoadingCopyWith(
          _$_ProductsLoading value, $Res Function(_$_ProductsLoading) then) =
      __$$_ProductsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductsLoadingCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$_ProductsLoadingCopyWith<$Res> {
  __$$_ProductsLoadingCopyWithImpl(
      _$_ProductsLoading _value, $Res Function(_$_ProductsLoading) _then)
      : super(_value, (v) => _then(v as _$_ProductsLoading));

  @override
  _$_ProductsLoading get _value => super._value as _$_ProductsLoading;
}

/// @nodoc

class _$_ProductsLoading implements _ProductsLoading {
  const _$_ProductsLoading();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> products, int cartCount) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoading implements ProductsState {
  const factory _ProductsLoading() = _$_ProductsLoading;
}

/// @nodoc
abstract class _$$_ProductsLoadedCopyWith<$Res> {
  factory _$$_ProductsLoadedCopyWith(
          _$_ProductsLoaded value, $Res Function(_$_ProductsLoaded) then) =
      __$$_ProductsLoadedCopyWithImpl<$Res>;
  $Res call({List<Item> products, int cartCount});
}

/// @nodoc
class __$$_ProductsLoadedCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$_ProductsLoadedCopyWith<$Res> {
  __$$_ProductsLoadedCopyWithImpl(
      _$_ProductsLoaded _value, $Res Function(_$_ProductsLoaded) _then)
      : super(_value, (v) => _then(v as _$_ProductsLoaded));

  @override
  _$_ProductsLoaded get _value => super._value as _$_ProductsLoaded;

  @override
  $Res call({
    Object? products = freezed,
    Object? cartCount = freezed,
  }) {
    return _then(_$_ProductsLoaded(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      cartCount: cartCount == freezed
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductsLoaded implements _ProductsLoaded {
  const _$_ProductsLoaded(
      {required final List<Item> products, required this.cartCount})
      : _products = products;

  final List<Item> _products;
  @override
  List<Item> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int cartCount;

  @override
  String toString() {
    return 'ProductsState.loaded(products: $products, cartCount: $cartCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsLoaded &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.cartCount, cartCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(cartCount));

  @JsonKey(ignore: true)
  @override
  _$$_ProductsLoadedCopyWith<_$_ProductsLoaded> get copyWith =>
      __$$_ProductsLoadedCopyWithImpl<_$_ProductsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> products, int cartCount) loaded,
  }) {
    return loaded(products, cartCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount)? loaded,
  }) {
    return loaded?.call(products, cartCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, cartCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsLoading value) loading,
    required TResult Function(_ProductsLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsLoading value)? loading,
    TResult Function(_ProductsLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoaded implements ProductsState {
  const factory _ProductsLoaded(
      {required final List<Item> products,
      required final int cartCount}) = _$_ProductsLoaded;

  List<Item> get products => throw _privateConstructorUsedError;
  int get cartCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProductsLoadedCopyWith<_$_ProductsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
