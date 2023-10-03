// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Videos _$VideosFromJson(Map<String, dynamic> json) => Videos(
      trailers: (json['trailers'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Trailers.fromJson(e as Map<String, dynamic>))
          .toList(),
      teasers: (json['teasers'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Teasers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideosToJson(Videos instance) => <String, dynamic>{
      'trailers': instance.trailers.map((e) => e?.toJson()).toList(),
      'teasers': instance.teasers.map((e) => e?.toJson()).toList(),
    };
