import 'package:json_annotation/json_annotation.dart';

part 'votes.g.dart';

@JsonSerializable()
class Votes {
  final int kp;
  final int imdb;
  final int filmCritics;
  final int russianFilmCritics;
  final double? await;

  Votes({
    required this.kp,
    required this.imdb,
    required this.filmCritics,
    required this.russianFilmCritics,
    required this.await,
  });

  factory Votes.fromJson(Map<String, dynamic> json) => _$VotesFromJson(json);

  Map<String, dynamic> toJson() => _$VotesToJson(this);
}
