import 'package:json_annotation/json_annotation.dart';
part'EtabInfo.g.dart';
@JsonSerializable()
class EtabInfo{

  final int id;
  final String name;
  final String email;
  final String type;

  EtabInfo(this.id, this.name, this.email, this.type);

  factory EtabInfo.fromJson(Map<String, dynamic> json) =>
      _$EtabInfoFromJson(json);

  Map<String, dynamic> toJson() => _$EtabInfoToJson(this);
}