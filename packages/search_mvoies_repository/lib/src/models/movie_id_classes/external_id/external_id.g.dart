// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalId _$ExternalIdFromJson(Map<String, dynamic> json) => ExternalId(
      kpHD: json['kpHD'] as String?,
      imdb: json['imdb'] as String?,
      tmdb: json['tmdb'] as int?,
    );

Map<String, dynamic> _$ExternalIdToJson(ExternalId instance) =>
    <String, dynamic>{
      'kpHD': instance.kpHD,
      'imdb': instance.imdb,
      'tmdb': instance.tmdb,
    };
