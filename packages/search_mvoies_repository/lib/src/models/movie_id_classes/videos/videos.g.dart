// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Videos _$VideosFromJson(Map<String, dynamic> json) => Videos(
      trailers: (json['trailers'] as List<dynamic>?)
          ?.map((e) => Trailers.fromJson(e as Map<String, dynamic>))
          .toList(),
      seasonsInfo: json['seasonsInfo'] as List<dynamic>,
    );

Map<String, dynamic> _$VideosToJson(Videos instance) => <String, dynamic>{
      'trailers': instance.trailers?.map((e) => e.toJson()).toList(),
      'seasonsInfo': instance.seasonsInfo,
    };
