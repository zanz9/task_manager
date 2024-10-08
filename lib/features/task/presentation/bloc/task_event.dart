part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;
  const factory TaskEvent.addTask({
    required String title,
  }) = _AddTask;
  const factory TaskEvent.toggleTask({
    required int id,
    required String title,
    required bool completed,
  }) = _ToggleTask;
  const factory TaskEvent.deleteTask({
    required int id,
  }) = _DeleteTask;
}
