// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sequels_and_prequels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SequelsAndPrequels _$SequelsAndPrequelsFromJson(Map<String, dynamic> json) =>
    SequelsAndPrequels(
      id: json['id'] as int?,
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      alternativeName: json['alternativeName'] as String?,
      type: json['type'] as String?,
      poster: json['poster'] == null
          ? null
          : Poster.fromJson(json['poster'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SequelsAndPrequelsToJson(SequelsAndPrequels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'enName': instance.enName,
      'alternativeName': instance.alternativeName,
      'type': instance.type,
      'poster': instance.poster?.toJson(),
    };
