import 'package:json_annotation/json_annotation.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/poster.dart';

part 'similar_movies.g.dart';

@JsonSerializable(explicitToJson: true)
class SimilarMovies {
  final int? id;
  final String? name;
  final String? enName;
  final String? alternativeName;
  final String? type;
  final Poster? poster;

  SimilarMovies({
    required this.id,
    required this.name,
    required this.enName,
    required this.alternativeName,
    required this.type,
    required this.poster,
  });

  factory SimilarMovies.fromJson(Map<String, dynamic> json) =>
      _$SimilarMoviesFromJson(json);

  Map<String, dynamic> toJson() => _$SimilarMoviesToJson(this);
}
