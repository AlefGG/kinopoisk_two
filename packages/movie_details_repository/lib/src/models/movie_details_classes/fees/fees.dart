import 'package:json_annotation/json_annotation.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/fees/russia.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/fees/usa.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/fees/world.dart';

part 'fees.g.dart';

@JsonSerializable(explicitToJson: true)
class Fees {
  final World? world;
  final Russia? russia;
  final Usa? usa;

  Fees({required this.world, required this.russia, required this.usa});

  factory Fees.fromJson(Map<String, dynamic> json) => _$FeesFromJson(json);

  Map<String, dynamic> toJson() => _$FeesToJson(this);
}
