import 'package:json_annotation/json_annotation.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/watchabiltiy/items.dart';

part 'watchability.g.dart';

@JsonSerializable(explicitToJson: true)
class Watchability {
  final List<Items?> items;

  Watchability({required this.items});

  factory Watchability.fromJson(Map<String, dynamic> json) =>
      _$WatchabilityFromJson(json);

  Map<String, dynamic> toJson() => _$WatchabilityToJson(this);
}
