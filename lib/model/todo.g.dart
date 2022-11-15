// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      createAt: DateTime.parse(json['createAt'] as String),
      title: json['title'] as String,
      isDone: json['isDone'] as bool,
      id: json['id'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'createAt': instance.createAt.toIso8601String(),
      'title': instance.title,
      'isDone': instance.isDone,
      'id': instance.id,
      'description': instance.description,
    };
