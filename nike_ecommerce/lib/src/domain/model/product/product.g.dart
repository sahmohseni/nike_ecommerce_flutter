// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductEntity _$$_ProductEntityFromJson(Map<String, dynamic> json) =>
    _$_ProductEntity(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as int,
      discount: json['discount'] as int,
      previous_price: json['previous_price'] as int,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_ProductEntityToJson(_$_ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'discount': instance.discount,
      'previous_price': instance.previous_price,
      'image': instance.image,
    };
