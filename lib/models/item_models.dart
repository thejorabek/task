import 'package:json_annotation/json_annotation.dart';

part 'item_models.g.dart';

@JsonSerializable()
class ItemsModel {

  @JsonKey(defaultValue: "", name: 'name')
  String name;

  @JsonKey(defaultValue: "", name: 'file_url')
  String fileUrl;

  @JsonKey(defaultValue: 0, name: 'id')
  int id;

  @JsonKey(defaultValue: 0, name: 'price')
  int price;

  @JsonKey(defaultValue: 0, name: 'category_id')
  int categoryId;

  ItemsModel({
    required this.name,
    required this.id,
    required this.categoryId,
    required this.fileUrl,
    required this.price
  });

  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsModelToJson(this);
}
