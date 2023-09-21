// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'watchability.g.dart';

@JsonSerializable()
class Watchability {
  final List? items;

  Watchability({
    required this.items,
  });

  factory Watchability.fromJson(Map<String, dynamic> json) =>
      _$WatchabilityFromJson(json);

  Map<String, dynamic> toJson() => _$WatchabilityToJson(this);
}
