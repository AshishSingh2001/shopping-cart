// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'items_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemsDetailsState {
  Item? get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item? item) loading,
    required TResult Function(Item? item) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item? item)? loading,
    TResult Function(Item? item)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item? item)? loading,
    TResult Function(Item? item)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsDetailsStateCopyWith<ItemsDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsDetailsStateCopyWith<$Res> {
  factory $ItemsDetailsStateCopyWith(
          ItemsDetailsState value, $Res Function(ItemsDetailsState) then) =
      _$ItemsDetailsStateCopyWithImpl<$Res>;
  $Res call({Item? item});

  $ItemCopyWith<$Res>? get item;
}

/// @nodoc
class _$ItemsDetailsStateCopyWithImpl<$Res>
    implements $ItemsDetailsStateCopyWith<$Res> {
  _$ItemsDetailsStateCopyWithImpl(this._value, this._then);

  final ItemsDetailsState _value;
  // ignore: unused_field
  final $Res Function(ItemsDetailsState) _then;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }

  @override
  $ItemCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ItemCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_DetailsLoadingStateCopyWith<$Res>
    implements $ItemsDetailsStateCopyWith<$Res> {
  factory _$$_DetailsLoadingStateCopyWith(_$_DetailsLoadingState value,
          $Res Function(_$_DetailsLoadingState) then) =
      __$$_DetailsLoadingStateCopyWithImpl<$Res>;
  @override
  $Res call({Item? item});

  @override
  $ItemCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_DetailsLoadingStateCopyWithImpl<$Res>
    extends _$ItemsDetailsStateCopyWithImpl<$Res>
    implements _$$_DetailsLoadingStateCopyWith<$Res> {
  __$$_DetailsLoadingStateCopyWithImpl(_$_DetailsLoadingState _value,
      $Res Function(_$_DetailsLoadingState) _then)
      : super(_value, (v) => _then(v as _$_DetailsLoadingState));

  @override
  _$_DetailsLoadingState get _value => super._value as _$_DetailsLoadingState;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_DetailsLoadingState(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }
}

/// @nodoc

class _$_DetailsLoadingState implements _DetailsLoadingState {
  const _$_DetailsLoadingState({this.item = null});

  @override
  @JsonKey()
  final Item? item;

  @override
  String toString() {
    return 'ItemsDetailsState.loading(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsLoadingState &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_DetailsLoadingStateCopyWith<_$_DetailsLoadingState> get copyWith =>
      __$$_DetailsLoadingStateCopyWithImpl<_$_DetailsLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item? item) loading,
    required TResult Function(Item? item) loaded,
  }) {
    return loading(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item? item)? loading,
    TResult Function(Item? item)? loaded,
  }) {
    return loading?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item? item)? loading,
    TResult Function(Item? item)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoadingState implements ItemsDetailsState {
  const factory _DetailsLoadingState({final Item? item}) =
      _$_DetailsLoadingState;

  @override
  Item? get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsLoadingStateCopyWith<_$_DetailsLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DetailsLoadedStateCopyWith<$Res>
    implements $ItemsDetailsStateCopyWith<$Res> {
  factory _$$_DetailsLoadedStateCopyWith(_$_DetailsLoadedState value,
          $Res Function(_$_DetailsLoadedState) then) =
      __$$_DetailsLoadedStateCopyWithImpl<$Res>;
  @override
  $Res call({Item? item});

  @override
  $ItemCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_DetailsLoadedStateCopyWithImpl<$Res>
    extends _$ItemsDetailsStateCopyWithImpl<$Res>
    implements _$$_DetailsLoadedStateCopyWith<$Res> {
  __$$_DetailsLoadedStateCopyWithImpl(
      _$_DetailsLoadedState _value, $Res Function(_$_DetailsLoadedState) _then)
      : super(_value, (v) => _then(v as _$_DetailsLoadedState));

  @override
  _$_DetailsLoadedState get _value => super._value as _$_DetailsLoadedState;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_DetailsLoadedState(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
    ));
  }
}

/// @nodoc

class _$_DetailsLoadedState implements _DetailsLoadedState {
  const _$_DetailsLoadedState({required this.item});

  @override
  final Item? item;

  @override
  String toString() {
    return 'ItemsDetailsState.loaded(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsLoadedState &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_DetailsLoadedStateCopyWith<_$_DetailsLoadedState> get copyWith =>
      __$$_DetailsLoadedStateCopyWithImpl<_$_DetailsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Item? item) loading,
    required TResult Function(Item? item) loaded,
  }) {
    return loaded(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Item? item)? loading,
    TResult Function(Item? item)? loaded,
  }) {
    return loaded?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Item? item)? loading,
    TResult Function(Item? item)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoadedState implements ItemsDetailsState {
  const factory _DetailsLoadedState({required final Item? item}) =
      _$_DetailsLoadedState;

  @override
  Item? get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsLoadedStateCopyWith<_$_DetailsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
