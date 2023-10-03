import 'package:json_annotation/json_annotation.dart';

part 'technology.g.dart';

@JsonSerializable()
class Technology {
  final bool? hasImax;
  final bool? has3D;

  Technology({required this.hasImax, required this.has3D});

  factory Technology.fromJson(Map<String, dynamic> json) =>
      _$TechnologyFromJson(json);

  Map<String, dynamic> toJson() => _$TechnologyToJson(this);
}
