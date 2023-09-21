// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/videos/trailers/trailers.dart';

part 'videos.g.dart';

@JsonSerializable(explicitToJson: true)
class Videos {
  final List<Trailers>? trailers;
  final List<dynamic> seasonsInfo;

  Videos({
    required this.trailers,
    required this.seasonsInfo,
  });

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

  Map<String, dynamic> toJson() => _$VideosToJson(this);
}
