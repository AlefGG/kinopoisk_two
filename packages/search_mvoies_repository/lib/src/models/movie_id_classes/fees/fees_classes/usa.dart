// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'usa.g.dart';

@JsonSerializable()
class Usa {
  final int? value;
  final String? currency;
  Usa({
    required this.value,
    required this.currency,
  });

  factory Usa.fromJson(Map<String, dynamic> json) => _$UsaFromJson(json);

  Map<String, dynamic> toJson() => _$UsaToJson(this);
}
