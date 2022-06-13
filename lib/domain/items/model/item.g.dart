// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      isInCart: json['isInCart'] as bool? ?? false,
      price: json['price'] as int,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isInCart': instance.isInCart,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };
