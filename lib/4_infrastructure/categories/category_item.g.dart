// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryItemImpl _$$CategoryItemImplFromJson(Map<String, dynamic> json) =>
    _$CategoryItemImpl(
      idy: json['id'] as int,
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$CategoryItemImplToJson(_$CategoryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.idy,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
    };
