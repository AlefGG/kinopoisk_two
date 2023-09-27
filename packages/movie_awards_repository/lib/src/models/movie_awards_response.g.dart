// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_awards_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieAwardsResponse _$MovieAwardsResponseFromJson(Map<String, dynamic> json) =>
    MovieAwardsResponse(
      movieAwards: (json['docs'] as List<dynamic>)
          .map((e) => MovieAwards.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      limit: json['limit'] as int,
      page: json['page'] as int,
      pages: json['pages'] as int,
    );

Map<String, dynamic> _$MovieAwardsResponseToJson(
        MovieAwardsResponse instance) =>
    <String, dynamic>{
      'docs': instance.movieAwards.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
    };
