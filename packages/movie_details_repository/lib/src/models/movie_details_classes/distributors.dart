import 'package:json_annotation/json_annotation.dart';

part 'distributors.g.dart';

@JsonSerializable()
class Distributors {
  final String? distributor;
  final String? distributorRelease;

  Distributors({required this.distributor, required this.distributorRelease});

  factory Distributors.fromJson(Map<String, dynamic> json) =>
      _$DistributorsFromJson(json);

  Map<String, dynamic> toJson() => _$DistributorsToJson(this);
}
