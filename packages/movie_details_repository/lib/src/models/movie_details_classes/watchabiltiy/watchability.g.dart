// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Watchability _$WatchabilityFromJson(Map<String, dynamic> json) => Watchability(
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WatchabilityToJson(Watchability instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e?.toJson()).toList(),
    };
