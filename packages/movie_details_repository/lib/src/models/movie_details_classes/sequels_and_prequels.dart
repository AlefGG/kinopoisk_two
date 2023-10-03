import 'package:json_annotation/json_annotation.dart';
import 'package:movie_details_repository/src/models/movie_details_classes/poster.dart';

part 'sequels_and_prequels.g.dart';

@JsonSerializable(explicitToJson: true)
class SequelsAndPrequels {
  final int? id;
  final String? name;
  final String? enName;
  final String? alternativeName;
  final String? type;
  final Poster? poster;

  SequelsAndPrequels(
      {required this.id,
      required this.name,
      required this.enName,
      required this.alternativeName,
      required this.type,
      required this.poster});

  factory SequelsAndPrequels.fromJson(Map<String, dynamic> json) =>
      _$SequelsAndPrequelsFromJson(json);

  Map<String, dynamic> toJson() => _$SequelsAndPrequelsToJson(this);
}
