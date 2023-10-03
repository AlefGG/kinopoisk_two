// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Facts _$FactsFromJson(Map<String, dynamic> json) => Facts(
      value: json['value'] as String?,
      type: json['type'] as String?,
      spoiler: json['spoiler'] as bool,
    );

Map<String, dynamic> _$FactsToJson(Facts instance) => <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
      'spoiler': instance.spoiler,
    };
