import 'package:json_annotation/json_annotation.dart';

part 'facts.g.dart';

@JsonSerializable()
class Facts {
  final String? value;
  final String? type;
  final bool spoiler;

  Facts({required this.value, required this.type, required this.spoiler});

  factory Facts.fromJson(Map<String, dynamic> json) => _$FactsFromJson(json);

  Map<String, dynamic> toJson() => _$FactsToJson(this);
}
