// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryItem _$CategoryItemFromJson(Map<String, dynamic> json) {
  return _CategoryItem.fromJson(json);
}

/// @nodoc
mixin _$CategoryItem {
  @JsonKey(name: 'id')
  int get idy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemCopyWith<$Res> {
  factory $CategoryItemCopyWith(
          CategoryItem value, $Res Function(CategoryItem) then) =
      _$CategoryItemCopyWithImpl<$Res, CategoryItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int idy,
      String title,
      double price,
      String description,
      String category,
      String image});
}

/// @nodoc
class _$CategoryItemCopyWithImpl<$Res, $Val extends CategoryItem>
    implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idy = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      idy: null == idy
          ? _value.idy
          : idy // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemImplCopyWith<$Res>
    implements $CategoryItemCopyWith<$Res> {
  factory _$$CategoryItemImplCopyWith(
          _$CategoryItemImpl value, $Res Function(_$CategoryItemImpl) then) =
      __$$CategoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int idy,
      String title,
      double price,
      String description,
      String category,
      String image});
}

/// @nodoc
class __$$CategoryItemImplCopyWithImpl<$Res>
    extends _$CategoryItemCopyWithImpl<$Res, _$CategoryItemImpl>
    implements _$$CategoryItemImplCopyWith<$Res> {
  __$$CategoryItemImplCopyWithImpl(
      _$CategoryItemImpl _value, $Res Function(_$CategoryItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idy = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
  }) {
    return _then(_$CategoryItemImpl(
      idy: null == idy
          ? _value.idy
          : idy // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemImpl extends _CategoryItem {
  _$CategoryItemImpl(
      {@JsonKey(name: 'id') required this.idy,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image})
      : super._();

  factory _$CategoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int idy;
  @override
  final String title;
  @override
  final double price;
  @override
  final String description;
  @override
  final String category;
  @override
  final String image;

  @override
  String toString() {
    return 'CategoryItem(idy: $idy, title: $title, price: $price, description: $description, category: $category, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemImpl &&
            (identical(other.idy, idy) || other.idy == idy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idy, title, price, description, category, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemImplCopyWith<_$CategoryItemImpl> get copyWith =>
      __$$CategoryItemImplCopyWithImpl<_$CategoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemImplToJson(
      this,
    );
  }
}

abstract class _CategoryItem extends CategoryItem {
  factory _CategoryItem(
      {@JsonKey(name: 'id') required final int idy,
      required final String title,
      required final double price,
      required final String description,
      required final String category,
      required final String image}) = _$CategoryItemImpl;
  _CategoryItem._() : super._();

  factory _CategoryItem.fromJson(Map<String, dynamic> json) =
      _$CategoryItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get idy;
  @override
  String get title;
  @override
  double get price;
  @override
  String get description;
  @override
  String get category;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$CategoryItemImplCopyWith<_$CategoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
