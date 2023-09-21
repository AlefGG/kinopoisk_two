// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'images_info.g.dart';

@JsonSerializable()
class ImagesInfo {
  final int? framesCount;
  ImagesInfo({
    this.framesCount,
  });

  factory ImagesInfo.fromJson(Map<String, dynamic> json) =>
      _$ImagesInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesInfoToJson(this);
}
