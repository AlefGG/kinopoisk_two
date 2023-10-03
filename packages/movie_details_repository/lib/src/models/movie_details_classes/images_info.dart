import 'package:json_annotation/json_annotation.dart';

part 'images_info.g.dart';

@JsonSerializable()
class ImagesInfo {
  final int? postersCount;
  final int? backdropsCount;
  final int? framesCount;

  ImagesInfo({this.postersCount, this.backdropsCount, this.framesCount});

  factory ImagesInfo.fromJson(Map<String, dynamic> json) =>
      _$ImagesInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesInfoToJson(this);
}
