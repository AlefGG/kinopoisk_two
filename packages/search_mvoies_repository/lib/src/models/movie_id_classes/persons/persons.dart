// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'persons.g.dart';

@JsonSerializable()
class Persons {
  final int? id;
  final String? photo;
  final String? name;
  final String? enName;
  final String? description;
  final String? profession;
  final String? enProfession;
  Persons({
    required this.id,
    required this.photo,
    required this.name,
    required this.enName,
    required this.description,
    required this.profession,
    required this.enProfession,
  });

  factory Persons.fromJson(Map<String, dynamic> json) =>
      _$PersonsFromJson(json);

  Map<String, dynamic> toJson() => _$PersonsToJson(this);
}
