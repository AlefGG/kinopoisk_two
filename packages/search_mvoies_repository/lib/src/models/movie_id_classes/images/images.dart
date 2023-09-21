// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {
  final int? postersCount;
  final int? backdropsCount;
  final int? framesCount;
  Images({
    required this.postersCount,
    required this.backdropsCount,
    required this.framesCount,
  });

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
