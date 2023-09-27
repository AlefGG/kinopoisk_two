// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_award_nomitation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieAwardNomination _$MovieAwardNominationFromJson(
        Map<String, dynamic> json) =>
    MovieAwardNomination(
      award: MovieAwardAward.fromJson(json['award'] as Map<String, dynamic>),
      title: json['title'] as String,
    );

Map<String, dynamic> _$MovieAwardNominationToJson(
        MovieAwardNomination instance) =>
    <String, dynamic>{
      'award': instance.award.toJson(),
      'title': instance.title,
    };
