import 'package:json_annotation/json_annotation.dart';

part 'seasons_info.g.dart';

@JsonSerializable()
class SeasonsInfo {
  final int? number;
  final int? episodesCount;

  SeasonsInfo({required this.number, required this.episodesCount});

  factory SeasonsInfo.fromJson(Map<String, dynamic> json) =>
      _$SeasonsInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonsInfoToJson(this);
}
