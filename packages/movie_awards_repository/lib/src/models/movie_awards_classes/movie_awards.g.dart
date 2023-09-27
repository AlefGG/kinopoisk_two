// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../movie_awards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieAwards _$MovieAwardsFromJson(Map<String, dynamic> json) => MovieAwards(
      movieId: json['movieId'] as int,
      nomination: MovieAwardNomination.fromJson(
          json['nomination'] as Map<String, dynamic>),
      winning: json['winning'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$MovieAwardsToJson(MovieAwards instance) =>
    <String, dynamic>{
      'movieId': instance.movieId,
      'nomination': instance.nomination.toJson(),
      'winning': instance.winning,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
    };
