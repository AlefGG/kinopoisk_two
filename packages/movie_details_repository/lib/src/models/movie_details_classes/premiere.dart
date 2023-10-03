import 'package:json_annotation/json_annotation.dart';

part 'premiere.g.dart';

@JsonSerializable()
class Premiere {
  final String? world;
  final String? russia;

  Premiere({required this.world, required this.russia});

  factory Premiere.fromJson(Map<String, dynamic> json) =>
      _$PremiereFromJson(json);

  Map<String, dynamic> toJson() => _$PremiereToJson(this);
}
