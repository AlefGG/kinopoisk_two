import 'package:json_annotation/json_annotation.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/videos/teasers.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/videos/trailers.dart';

part 'videos.g.dart';

@JsonSerializable(explicitToJson: true)
class Videos {
  final List<Trailers?> trailers;
  final List<Teasers?> teasers;

  Videos({required this.trailers, required this.teasers});

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);

  Map<String, dynamic> toJson() => _$VideosToJson(this);
}
