// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'votes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Votes _$VotesFromJson(Map<String, dynamic> json) => Votes(
      kp: json['kp'] as int?,
      imdb: json['imdb'] as int?,
      filmCritics: json['filmCritics'] as int?,
      russianFilmCritics: json['russianFilmCritics'] as int?,
      await: json['await'] as int?,
    );

Map<String, dynamic> _$VotesToJson(Votes instance) => <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
      'await': instance.await,
    };
