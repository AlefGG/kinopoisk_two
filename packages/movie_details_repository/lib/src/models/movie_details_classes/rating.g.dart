// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      kp: (json['kp'] as num).toDouble(),
      imdb: (json['imdb'] as num).toDouble(),
      filmCritics: (json['filmCritics'] as num).toDouble(),
      russianFilmCritics: (json['russianFilmCritics'] as num).toDouble(),
      await: (json['await'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
      'await': instance.await,
    };
