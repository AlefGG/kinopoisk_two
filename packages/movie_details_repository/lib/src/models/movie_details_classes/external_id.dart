import 'package:json_annotation/json_annotation.dart';

part 'external_id.g.dart';

@JsonSerializable()
class ExternalId {
  final String? kpHD;
  final String? imdb;
  final int? tmdb;

  ExternalId({required this.kpHD, required this.imdb, required this.tmdb});

  factory ExternalId.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdFromJson(json);

  Map<String, dynamic> toJson() => _$ExternalIdToJson(this);
}
