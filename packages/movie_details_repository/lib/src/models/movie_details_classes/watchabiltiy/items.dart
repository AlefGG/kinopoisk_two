import 'package:json_annotation/json_annotation.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/poster.dart';

part 'items.g.dart';

@JsonSerializable(explicitToJson: true)
class Items {
  final String? name;
  final Poster? poster;
  final String? url;

  Items({required this.name, required this.poster, required this.url});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
