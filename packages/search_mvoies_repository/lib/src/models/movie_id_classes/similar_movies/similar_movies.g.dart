// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarMovies _$SimilarMoviesFromJson(Map<String, dynamic> json) =>
    SimilarMovies(
      id: json['id'] as int?,
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      alternativeName: json['alternativeName'] as String?,
      type: json['type'] as String?,
      poster: json['poster'] == null
          ? null
          : Poster.fromJson(json['poster'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SimilarMoviesToJson(SimilarMovies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'enName': instance.enName,
      'alternativeName': instance.alternativeName,
      'type': instance.type,
      'poster': instance.poster?.toJson(),
    };
