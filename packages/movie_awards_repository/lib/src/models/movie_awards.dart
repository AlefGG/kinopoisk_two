import 'package:json_annotation/json_annotation.dart';
import 'package:movie_awards_repository/src/models/movie_awards_classes/movie_award_nomitation.dart';

part 'movie_awards_classes/movie_awards.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieAwards {
  final int movieId;
  final MovieAwardNomination nomination;
  final bool winning;
  final String createdAt;
  final String updatedAt;
  final String id;

  MovieAwards({
    required this.movieId,
    required this.nomination,
    required this.winning,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  });

  factory MovieAwards.fromJson(Map<String, dynamic> json) =>
      _$MovieAwardsFromJson(json);

  Map<String, dynamic> toJson() => _$MovieAwardsToJson(this);
}
