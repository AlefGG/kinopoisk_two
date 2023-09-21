// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_250_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movies250Response _$Movies250ResponseFromJson(Map<String, dynamic> json) =>
    Movies250Response(
      total: json['total'] as int,
      limit: json['limit'] as int,
      page: json['page'] as int,
      pages: json['pages'] as int,
      movies: (json['docs'] as List<dynamic>)
          .map((e) => MovieIdResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Movies250ResponseToJson(Movies250Response instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
      'docs': instance.movies.map((e) => e.toJson()).toList(),
    };
