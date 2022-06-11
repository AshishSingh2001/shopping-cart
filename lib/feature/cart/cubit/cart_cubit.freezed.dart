// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> products, int cartCount, int cartTotal)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount, int cartTotal)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount, int cartTotal)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class _$$_CartLoadingCopyWith<$Res> {
  factory _$$_CartLoadingCopyWith(
          _$_CartLoading value, $Res Function(_$_CartLoading) then) =
      __$$_CartLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartLoadingCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_CartLoadingCopyWith<$Res> {
  __$$_CartLoadingCopyWithImpl(
      _$_CartLoading _value, $Res Function(_$_CartLoading) _then)
      : super(_value, (v) => _then(v as _$_CartLoading));

  @override
  _$_CartLoading get _value => super._value as _$_CartLoading;
}

/// @nodoc

class _$_CartLoading implements _CartLoading {
  const _$_CartLoading();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> products, int cartCount, int cartTotal)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount, int cartTotal)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount, int cartTotal)? loaded,
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
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CartLoading implements CartState {
  const factory _CartLoading() = _$_CartLoading;
}

/// @nodoc
abstract class _$$_CartLoadedCopyWith<$Res> {
  factory _$$_CartLoadedCopyWith(
          _$_CartLoaded value, $Res Function(_$_CartLoaded) then) =
      __$$_CartLoadedCopyWithImpl<$Res>;
  $Res call({List<Item> products, int cartCount, int cartTotal});
}

/// @nodoc
class __$$_CartLoadedCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$$_CartLoadedCopyWith<$Res> {
  __$$_CartLoadedCopyWithImpl(
      _$_CartLoaded _value, $Res Function(_$_CartLoaded) _then)
      : super(_value, (v) => _then(v as _$_CartLoaded));

  @override
  _$_CartLoaded get _value => super._value as _$_CartLoaded;

  @override
  $Res call({
    Object? products = freezed,
    Object? cartCount = freezed,
    Object? cartTotal = freezed,
  }) {
    return _then(_$_CartLoaded(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      cartCount: cartCount == freezed
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
      cartTotal: cartTotal == freezed
          ? _value.cartTotal
          : cartTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartLoaded implements _CartLoaded {
  const _$_CartLoaded(
      {required final List<Item> products,
      required this.cartCount,
      required this.cartTotal})
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
  final int cartTotal;

  @override
  String toString() {
    return 'CartState.loaded(products: $products, cartCount: $cartCount, cartTotal: $cartTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartLoaded &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other.cartCount, cartCount) &&
            const DeepCollectionEquality().equals(other.cartTotal, cartTotal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(cartCount),
      const DeepCollectionEquality().hash(cartTotal));

  @JsonKey(ignore: true)
  @override
  _$$_CartLoadedCopyWith<_$_CartLoaded> get copyWith =>
      __$$_CartLoadedCopyWithImpl<_$_CartLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Item> products, int cartCount, int cartTotal)
        loaded,
  }) {
    return loaded(products, cartCount, cartTotal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount, int cartTotal)? loaded,
  }) {
    return loaded?.call(products, cartCount, cartTotal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Item> products, int cartCount, int cartTotal)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, cartCount, cartTotal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CartLoading value) loading,
    required TResult Function(_CartLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CartLoading value)? loading,
    TResult Function(_CartLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CartLoaded implements CartState {
  const factory _CartLoaded(
      {required final List<Item> products,
      required final int cartCount,
      required final int cartTotal}) = _$_CartLoaded;

  List<Item> get products => throw _privateConstructorUsedError;
  int get cartCount => throw _privateConstructorUsedError;
  int get cartTotal => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_CartLoadedCopyWith<_$_CartLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
