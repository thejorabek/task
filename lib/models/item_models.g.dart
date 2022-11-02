// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) => ItemsModel(
      name: json['name'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      categoryId: json['category_id'] as int? ?? 0,
      fileUrl: json['file_url'] as String? ?? '',
      price: json['price'] as int? ?? 0,
    );

Map<String, dynamic> _$ItemsModelToJson(ItemsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'file_url': instance.fileUrl,
      'id': instance.id,
      'price': instance.price,
      'category_id': instance.categoryId,
    };
