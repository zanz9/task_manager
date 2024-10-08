part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = TaskLoading;
  const factory TaskState.loaded(List<TaskEntity> tasks) = TaskLoaded;
  const factory TaskState.error(String message) = TaskError;
}
