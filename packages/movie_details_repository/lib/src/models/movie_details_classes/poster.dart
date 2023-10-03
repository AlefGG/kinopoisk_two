import 'package:json_annotation/json_annotation.dart';

part 'poster.g.dart';

@JsonSerializable()
class Poster {
  final String? url;
  final String? previewUrl;

  Poster({required this.url, required this.previewUrl});

  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);

  Map<String, dynamic> toJson() => _$PosterToJson(this);
}
