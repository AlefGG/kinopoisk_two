import 'package:json_annotation/json_annotation.dart';

part 'backdrop.g.dart';

@JsonSerializable()
class Backdrop {
  final String? url;
  final String? previewUrl;

  Backdrop({required this.url, required this.previewUrl});

  factory Backdrop.fromJson(Map<String, dynamic> json) =>
      _$BackdropFromJson(json);

  Map<String, dynamic> toJson() => _$BackdropToJson(this);
}
