// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'russia.g.dart';

@JsonSerializable()
class Russia {
  final int? value;
  final String? currency;
  Russia({
    required this.value,
    required this.currency,
  });

  factory Russia.fromJson(Map<String, dynamic> json) => _$RussiaFromJson(json);

  Map<String, dynamic> toJson() => _$RussiaToJson(this);
}
