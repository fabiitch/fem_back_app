import 'package:json_annotation/json_annotation.dart';

part 'Item.g.dart';

@JsonSerializable()
class Item {
  final int id;
  final String name;
  final String description;
  final double price;
  final bool canBuy;

  Item(this.id, this.name, this.description, this.price, this.canBuy);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
