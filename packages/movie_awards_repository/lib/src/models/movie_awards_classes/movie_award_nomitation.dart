import 'package:json_annotation/json_annotation.dart';
import 'package:movie_awards_repository/src/models/movie_awards_classes/movie_award_award.dart';

part 'movie_award_nomitation.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieAwardNomination {
  final MovieAwardAward award;
  final String title;

  MovieAwardNomination({
    required this.award,
    required this.title,
  });

  factory MovieAwardNomination.fromJson(Map<String, dynamic> json) =>
      _$MovieAwardNominationFromJson(json);

  Map<String, dynamic> toJson() => _$MovieAwardNominationToJson(this);
}
