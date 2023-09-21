// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'trailers.g.dart';

@JsonSerializable()
class Trailers {
  final String? url;
  final String? name;
  final String? site;
  final String? type;

  Trailers({
    required this.url,
    required this.name,
    required this.site,
    required this.type,
  });

  factory Trailers.fromJson(Map<String, dynamic> json) =>
      _$TrailersFromJson(json);

  Map<String, dynamic> toJson() => _$TrailersToJson(this);
}
