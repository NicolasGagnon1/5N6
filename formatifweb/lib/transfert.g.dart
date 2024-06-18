// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListeElement _$ListeElementFromJson(Map<String, dynamic> json) => ListeElement()
  ..nombre = (json['nombre'] as num).toInt()
  ..description = json['description'] as String
  ..representation = json['representation'] as String;

Map<String, dynamic> _$ListeElementToJson(ListeElement instance) =>
    <String, dynamic>{
      'nombre': instance.nombre,
      'description': instance.description,
      'representation': instance.representation,
    };
