import 'package:json_annotation/json_annotation.dart';

part 'countries.g.dart';

@JsonSerializable()
class Countries {
  final String? name;

  Countries({required this.name});

  factory Countries.fromJson(Map<String, dynamic> json) =>
      _$CountriesFromJson(json);

  Map<String, dynamic> toJson() => _$CountriesToJson(this);
}
