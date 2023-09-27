import 'package:json_annotation/json_annotation.dart';

part 'movie_award_award.g.dart';

@JsonSerializable()
class MovieAwardAward {
  final String title;
  final int year;

  MovieAwardAward({
    required this.title,
    required this.year,
  });

  factory MovieAwardAward.fromJson(Map<String, dynamic> json) =>
      _$MovieAwardAwardFromJson(json);

  Map<String, dynamic> toJson() => _$MovieAwardAwardToJson(this);
}
