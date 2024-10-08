import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_entity.freezed.dart';
part 'task_entity.g.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required int id,
    required String title,
    required bool completed,
  }) = _TaskEntity;

  factory TaskEntity.fromJson(Map<String, dynamic> json) =>
      _$TaskEntityFromJson(json);
}
