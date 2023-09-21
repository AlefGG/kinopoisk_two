// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'spoken_languages.g.dart';

@JsonSerializable()
class SpokenLanguages {
  final String? name;
  final String? nameEn;
  SpokenLanguages({
    this.name,
    this.nameEn,
  });

  factory SpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesFromJson(json);

  Map<String, dynamic> toJson() => _$SpokenLanguagesToJson(this);
}
