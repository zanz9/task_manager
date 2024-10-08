import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager/core/di/di_init.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';
import 'package:task_manager/features/task/domain/usecases/task_usecase.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskUseCase _taskUseCase = getIt<TaskUseCase>();

  TaskBloc() : super(const _Initial()) {
    on<_Started>((event, emit) => _initTasks(event, emit));
    on<_AddTask>((event, emit) => _addTask(event, emit));
    on<_ToggleTask>((event, emit) => _toggleTask(event, emit));
  }

  _initTasks(event, emit) async {
    emit(const TaskState.loading());
    try {
      final tasks = await _taskUseCase.getTasks(
        const TaskRequest(userId: 1),
      );
      emit(TaskState.loaded(tasks));
    } catch (e) {
      emit(
        TaskState.error('Не удалось загрузить задачи: ${e.toString()}'),
      );
    }
  }

  _addTask(event, emit) async {
    try {
      final tasks = await _taskUseCase.setTask(
        ChangeTaskRequest(
          title: event.title,
          completed: false,
        ),
      );
      emit(TaskState.loaded(tasks));
    } catch (e) {
      emit(TaskState.error('Не удалось добавить задачу: ${e.toString()}'));
    }
  }

  _toggleTask(event, emit) async {
    try {
      final tasks = await _taskUseCase.setTask(
        ChangeTaskRequest(
          id: event.id,
          title: event.title,
          completed: event.completed,
        ),
      );
      emit(TaskState.loaded(tasks));
    } catch (e) {
      emit(TaskState.error('Не удалось изменить задачу: ${e.toString()}'));
    }
  }
}
