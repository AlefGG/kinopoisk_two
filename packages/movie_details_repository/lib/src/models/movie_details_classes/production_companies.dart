import 'package:json_annotation/json_annotation.dart';

part 'production_companies.g.dart';

@JsonSerializable()
class ProductionCompanies {
  final String? name;
  final String? url;
  final String? previewUrl;

  ProductionCompanies({
    required this.name,
    required this.url,
    required this.previewUrl,
  });

  factory ProductionCompanies.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesFromJson(json);

  Map<String, dynamic> toJson() => _$ProductionCompaniesToJson(this);
}
