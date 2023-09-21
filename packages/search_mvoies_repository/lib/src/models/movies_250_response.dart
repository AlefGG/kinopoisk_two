import 'package:json_annotation/json_annotation.dart';
import 'package:search_movies_repository/search_movies_repository.dart';
import 'package:search_movies_repository/src/models/movie_id_response.dart';

part 'movies_250_response.g.dart';

@JsonSerializable(explicitToJson: true)
class Movies250Response {
  final int total;
  final int limit;
  final int page;
  final int pages;
  @JsonKey(name: 'docs')
  final List<MovieIdResponse> movies;

  Movies250Response({
    required this.total,
    required this.limit,
    required this.page,
    required this.pages,
    required this.movies,
  });

  factory Movies250Response.fromJson(Map<String, dynamic> json) =>
      _$Movies250ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$Movies250ResponseToJson(this);
}
