import 'package:json_annotation/json_annotation.dart';

part 'teasers.g.dart';

@JsonSerializable()
class Teasers {
  final String? url;
  final String? name;
  final String? site;
  final String? type;

  Teasers({
    required this.url,
    required this.name,
    required this.site,
    required this.type,
  });

  factory Teasers.fromJson(Map<String, dynamic> json) =>
      _$TeasersFromJson(json);

  Map<String, dynamic> toJson() => _$TeasersToJson(this);
}
