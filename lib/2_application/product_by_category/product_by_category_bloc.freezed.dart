// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductByCategoryEvent {
  ProductItem get productItem => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductItem productItem) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductItem productItem)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductItem productItem)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductByCategoryEventCopyWith<ProductByCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductByCategoryEventCopyWith<$Res> {
  factory $ProductByCategoryEventCopyWith(ProductByCategoryEvent value,
          $Res Function(ProductByCategoryEvent) then) =
      _$ProductByCategoryEventCopyWithImpl<$Res, ProductByCategoryEvent>;
  @useResult
  $Res call({ProductItem productItem});

  $ProductItemCopyWith<$Res> get productItem;
}

/// @nodoc
class _$ProductByCategoryEventCopyWithImpl<$Res,
        $Val extends ProductByCategoryEvent>
    implements $ProductByCategoryEventCopyWith<$Res> {
  _$ProductByCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItem = null,
  }) {
    return _then(_value.copyWith(
      productItem: null == productItem
          ? _value.productItem
          : productItem // ignore: cast_nullable_to_non_nullable
              as ProductItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductItemCopyWith<$Res> get productItem {
    return $ProductItemCopyWith<$Res>(_value.productItem, (value) {
      return _then(_value.copyWith(productItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $ProductByCategoryEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductItem productItem});

  @override
  $ProductItemCopyWith<$Res> get productItem;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductByCategoryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItem = null,
  }) {
    return _then(_$StartedImpl(
      productItem: null == productItem
          ? _value.productItem
          : productItem // ignore: cast_nullable_to_non_nullable
              as ProductItem,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl({required this.productItem});

  @override
  final ProductItem productItem;

  @override
  String toString() {
    return 'ProductByCategoryEvent.started(productItem: $productItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.productItem, productItem) ||
                other.productItem == productItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductItem productItem) started,
  }) {
    return started(productItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductItem productItem)? started,
  }) {
    return started?.call(productItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductItem productItem)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(productItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductByCategoryEvent {
  const factory _Started({required final ProductItem productItem}) =
      _$StartedImpl;

  @override
  ProductItem get productItem;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductByCategoryState {
  List<ProductItem> get items => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, List<ProductItem>>> get optionFailedOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductByCategoryStateCopyWith<ProductByCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductByCategoryStateCopyWith<$Res> {
  factory $ProductByCategoryStateCopyWith(ProductByCategoryState value,
          $Res Function(ProductByCategoryState) then) =
      _$ProductByCategoryStateCopyWithImpl<$Res, ProductByCategoryState>;
  @useResult
  $Res call(
      {List<ProductItem> items,
      Option<Either<ProductFailure, List<ProductItem>>> optionFailedOrSuccess});
}

/// @nodoc
class _$ProductByCategoryStateCopyWithImpl<$Res,
        $Val extends ProductByCategoryState>
    implements $ProductByCategoryStateCopyWith<$Res> {
  _$ProductByCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? optionFailedOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>,
      optionFailedOrSuccess: null == optionFailedOrSuccess
          ? _value.optionFailedOrSuccess
          : optionFailedOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<ProductItem>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryStateImplCopyWith<$Res>
    implements $ProductByCategoryStateCopyWith<$Res> {
  factory _$$CategoryStateImplCopyWith(
          _$CategoryStateImpl value, $Res Function(_$CategoryStateImpl) then) =
      __$$CategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductItem> items,
      Option<Either<ProductFailure, List<ProductItem>>> optionFailedOrSuccess});
}

/// @nodoc
class __$$CategoryStateImplCopyWithImpl<$Res>
    extends _$ProductByCategoryStateCopyWithImpl<$Res, _$CategoryStateImpl>
    implements _$$CategoryStateImplCopyWith<$Res> {
  __$$CategoryStateImplCopyWithImpl(
      _$CategoryStateImpl _value, $Res Function(_$CategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? optionFailedOrSuccess = null,
  }) {
    return _then(_$CategoryStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>,
      optionFailedOrSuccess: null == optionFailedOrSuccess
          ? _value.optionFailedOrSuccess
          : optionFailedOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<ProductItem>>>,
    ));
  }
}

/// @nodoc

class _$CategoryStateImpl implements _CategoryState {
  const _$CategoryStateImpl(
      {required final List<ProductItem> items,
      required this.optionFailedOrSuccess})
      : _items = items;

  final List<ProductItem> _items;
  @override
  List<ProductItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Option<Either<ProductFailure, List<ProductItem>>> optionFailedOrSuccess;

  @override
  String toString() {
    return 'ProductByCategoryState(items: $items, optionFailedOrSuccess: $optionFailedOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.optionFailedOrSuccess, optionFailedOrSuccess) ||
                other.optionFailedOrSuccess == optionFailedOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), optionFailedOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      __$$CategoryStateImplCopyWithImpl<_$CategoryStateImpl>(this, _$identity);
}

abstract class _CategoryState implements ProductByCategoryState {
  const factory _CategoryState(
      {required final List<ProductItem> items,
      required final Option<Either<ProductFailure, List<ProductItem>>>
          optionFailedOrSuccess}) = _$CategoryStateImpl;

  @override
  List<ProductItem> get items;
  @override
  Option<Either<ProductFailure, List<ProductItem>>> get optionFailedOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$CategoryStateImplCopyWith<_$CategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
