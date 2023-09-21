// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'audience.g.dart';

@JsonSerializable()
class Audience {
  final int? count;
  final String? country;
  Audience({
    required this.count,
    required this.country,
  });

  factory Audience.fromJson(Map<String, dynamic> json) =>
      _$AudienceFromJson(json);

  Map<String, dynamic> toJson() => _$AudienceToJson(this);
}
