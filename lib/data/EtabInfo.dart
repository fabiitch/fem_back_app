import 'package:json_annotation/json_annotation.dart';
part'generated/EtabInfo.g.dart';
@JsonSerializable()
class EtabInfo{

  final String name;
  final String email;
  final String type;

  EtabInfo(this.name, this.email, this.type);

  factory EtabInfo.fromJson(Map<String, dynamic> json) => _$EtabInfoFromJson(json);

  Map<String, dynamic> toJson() => _$EtabInfoToJson(this);
}