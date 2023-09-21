// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persons _$PersonsFromJson(Map<String, dynamic> json) => Persons(
      id: json['id'] as int?,
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      description: json['description'] as String?,
      profession: json['profession'] as String?,
      enProfession: json['enProfession'] as String?,
    );

Map<String, dynamic> _$PersonsToJson(Persons instance) => <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name': instance.name,
      'enName': instance.enName,
      'description': instance.description,
      'profession': instance.profession,
      'enProfession': instance.enProfession,
    };
