import 'package:json_annotation/json_annotation.dart';

part 'world.g.dart';

@JsonSerializable()
class World {
  final int value;
  final String currency;

  World({required this.value, required this.currency});

  factory World.fromJson(Map<String, dynamic> json) => _$WorldFromJson(json);

  Map<String, dynamic> toJson() => _$WorldToJson(this);
}
