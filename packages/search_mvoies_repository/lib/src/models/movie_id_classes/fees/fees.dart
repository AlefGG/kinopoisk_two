// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/fees/fees_classes/russia.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/fees/fees_classes/usa.dart';
import 'package:search_movies_repository/src/models/movie_id_classes/fees/fees_classes/world.dart';

part 'fees.g.dart';

@JsonSerializable(explicitToJson: true)
class Fees {
  final World? world;
  final Russia? russia;
  final Usa? usa;
  Fees({
    required this.world,
    required this.russia,
    required this.usa,
  });

  factory Fees.fromJson(Map<String, dynamic> json) => _$FeesFromJson(json);

  Map<String, dynamic> toJson() => _$FeesToJson(this);
}
