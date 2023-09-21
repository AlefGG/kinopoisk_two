// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'premiere.g.dart';

@JsonSerializable()
class Premiere {
  final String? distributor;
  final String? distributorRelease;
  Premiere({
    required this.distributor,
    required this.distributorRelease,
  });

  factory Premiere.fromJson(Map<String, dynamic> json) =>
      _$PremiereFromJson(json);

  Map<String, dynamic> toJson() => _$PremiereToJson(this);
}
