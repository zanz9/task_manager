// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeTaskRequestImpl _$$ChangeTaskRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangeTaskRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$ChangeTaskRequestImplToJson(
        _$ChangeTaskRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
