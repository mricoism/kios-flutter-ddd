// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductItem> productItem) nextPage,
    required TResult Function(String keyword) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductItem> productItem)? nextPage,
    TResult? Function(String keyword)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductItem> productItem)? nextPage,
    TResult Function(String keyword)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductsEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductItem> productItem) nextPage,
    required TResult Function(String keyword) search,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductItem> productItem)? nextPage,
    TResult? Function(String keyword)? search,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductItem> productItem)? nextPage,
    TResult Function(String keyword)? search,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Search value) search,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Search value)? search,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
          _$NextPageImpl value, $Res Function(_$NextPageImpl) then) =
      __$$NextPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductItem> productItem});
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
      _$NextPageImpl _value, $Res Function(_$NextPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItem = null,
  }) {
    return _then(_$NextPageImpl(
      productItem: null == productItem
          ? _value._productItem
          : productItem // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>,
    ));
  }
}

/// @nodoc

class _$NextPageImpl with DiagnosticableTreeMixin implements _NextPage {
  const _$NextPageImpl({required final List<ProductItem> productItem})
      : _productItem = productItem;

  final List<ProductItem> _productItem;
  @override
  List<ProductItem> get productItem {
    if (_productItem is EqualUnmodifiableListView) return _productItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productItem);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsEvent.nextPage(productItem: $productItem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsEvent.nextPage'))
      ..add(DiagnosticsProperty('productItem', productItem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextPageImpl &&
            const DeepCollectionEquality()
                .equals(other._productItem, _productItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextPageImplCopyWith<_$NextPageImpl> get copyWith =>
      __$$NextPageImplCopyWithImpl<_$NextPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductItem> productItem) nextPage,
    required TResult Function(String keyword) search,
  }) {
    return nextPage(productItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductItem> productItem)? nextPage,
    TResult? Function(String keyword)? search,
  }) {
    return nextPage?.call(productItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductItem> productItem)? nextPage,
    TResult Function(String keyword)? search,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(productItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Search value) search,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Search value)? search,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements ProductsEvent {
  const factory _NextPage({required final List<ProductItem> productItem}) =
      _$NextPageImpl;

  List<ProductItem> get productItem;
  @JsonKey(ignore: true)
  _$$NextPageImplCopyWith<_$NextPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$SearchImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl with DiagnosticableTreeMixin implements _Search {
  const _$SearchImpl({required this.keyword});

  @override
  final String keyword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsEvent.search(keyword: $keyword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsEvent.search'))
      ..add(DiagnosticsProperty('keyword', keyword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<ProductItem> productItem) nextPage,
    required TResult Function(String keyword) search,
  }) {
    return search(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<ProductItem> productItem)? nextPage,
    TResult? Function(String keyword)? search,
  }) {
    return search?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<ProductItem> productItem)? nextPage,
    TResult Function(String keyword)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements ProductsEvent {
  const factory _Search({required final String keyword}) = _$SearchImpl;

  String get keyword;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isMoreLoading => throw _privateConstructorUsedError;
  String get check => throw _privateConstructorUsedError;
  List<ProductItem> get items => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, ProductSearch>> get optionFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isMoreLoading,
      String check,
      List<ProductItem> items,
      Option<Either<ProductFailure, ProductSearch>> optionFailureOrSuccess});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isMoreLoading = null,
    Object? check = null,
    Object? items = null,
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>,
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, ProductSearch>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isMoreLoading,
      String check,
      List<ProductItem> items,
      Option<Either<ProductFailure, ProductSearch>> optionFailureOrSuccess});
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isMoreLoading = null,
    Object? check = null,
    Object? items = null,
    Object? optionFailureOrSuccess = null,
  }) {
    return _then(_$ProductsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      check: null == check
          ? _value.check
          : check // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>,
      optionFailureOrSuccess: null == optionFailureOrSuccess
          ? _value.optionFailureOrSuccess
          : optionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, ProductSearch>>,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl
    with DiagnosticableTreeMixin
    implements _ProductsState {
  const _$ProductsStateImpl(
      {required this.isLoading,
      required this.isMoreLoading,
      required this.check,
      required final List<ProductItem> items,
      required this.optionFailureOrSuccess})
      : _items = items;

  @override
  final bool isLoading;
  @override
  final bool isMoreLoading;
  @override
  final String check;
  final List<ProductItem> _items;
  @override
  List<ProductItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Option<Either<ProductFailure, ProductSearch>> optionFailureOrSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState(isLoading: $isLoading, isMoreLoading: $isMoreLoading, check: $check, items: $items, optionFailureOrSuccess: $optionFailureOrSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isMoreLoading', isMoreLoading))
      ..add(DiagnosticsProperty('check', check))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty(
          'optionFailureOrSuccess', optionFailureOrSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading) &&
            (identical(other.check, check) || other.check == check) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.optionFailureOrSuccess, optionFailureOrSuccess) ||
                other.optionFailureOrSuccess == optionFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isMoreLoading, check,
      const DeepCollectionEquality().hash(_items), optionFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  const factory _ProductsState(
      {required final bool isLoading,
      required final bool isMoreLoading,
      required final String check,
      required final List<ProductItem> items,
      required final Option<Either<ProductFailure, ProductSearch>>
          optionFailureOrSuccess}) = _$ProductsStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isMoreLoading;
  @override
  String get check;
  @override
  List<ProductItem> get items;
  @override
  Option<Either<ProductFailure, ProductSearch>> get optionFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
