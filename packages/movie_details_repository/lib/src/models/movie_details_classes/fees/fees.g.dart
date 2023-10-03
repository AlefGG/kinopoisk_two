// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fees _$FeesFromJson(Map<String, dynamic> json) => Fees(
      world: json['world'] == null
          ? null
          : World.fromJson(json['world'] as Map<String, dynamic>),
      russia: json['russia'] == null
          ? null
          : Russia.fromJson(json['russia'] as Map<String, dynamic>),
      usa: json['usa'] == null
          ? null
          : Usa.fromJson(json['usa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeesToJson(Fees instance) => <String, dynamic>{
      'world': instance.world?.toJson(),
      'russia': instance.russia?.toJson(),
      'usa': instance.usa?.toJson(),
    };
