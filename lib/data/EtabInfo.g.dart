// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EtabInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EtabInfo _$EtabInfoFromJson(Map<String, dynamic> json) {
  return EtabInfo(
    json['id'] as String,
    json['iddd'] as String,
    json['name'] as String,
    json['email'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$EtabInfoToJson(EtabInfo instance) => <String, dynamic>{
      'id': instance.id,
      'iddd': instance.iddd,
      'name': instance.name,
      'email': instance.email,
      'type': instance.type,
    };
