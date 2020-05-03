// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../EtabInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EtabInfo _$EtabInfoFromJson(Map<String, dynamic> json) {
  return EtabInfo(
    json['name'] as String,
    json['email'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$EtabInfoToJson(EtabInfo instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'type': instance.type,
    };
