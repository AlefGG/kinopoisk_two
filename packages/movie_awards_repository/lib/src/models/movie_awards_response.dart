import 'package:json_annotation/json_annotation.dart';
import 'package:movie_awards_repository/src/models/movie_awards.dart';

part 'movie_awards_response.g.dart';

@JsonSerializable(explicitToJson: true)
class MovieAwardsResponse {
  @JsonKey(name: 'docs')
  final List<MovieAwards> movieAwards;
  final int total;
  final int limit;
  final int page;
  final int pages;

  MovieAwardsResponse({
    required this.movieAwards,
    required this.total,
    required this.limit,
    required this.page,
    required this.pages,
  });

  factory MovieAwardsResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieAwardsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieAwardsResponseToJson(this);
}
