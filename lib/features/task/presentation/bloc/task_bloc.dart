import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager/core/di/di_init.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';
import 'package:task_manager/features/task/domain/requests/task_complete_or_no_request.dart';
import 'package:task_manager/features/task/domain/requests/task_id_request.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';
import 'package:task_manager/features/task/domain/usecases/task_usecase.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskUseCase _taskUseCase = getIt<TaskUseCase>();

  int category = 0;

  TaskBloc() : super(const _Initial()) {
    on<_Started>((event, emit) => _initTasks(event, emit));
    on<_AddTask>((event, emit) => _addTask(event, emit));
    on<_ToggleTask>((event, emit) => _toggleTask(event, emit));
    on<_DeleteTask>((event, emit) => _deleteTask(event, emit));
    on<_ChangeCategory>((event, emit) => _changeCategory(event, emit));
  }

  _initTasks(event, emit) async {
    emit(const TaskState.loading());
    try {
      await _getAllTasksWithCategory(category, emit);
    } catch (e) {
      emit(
        TaskState.error('Не удалось загрузить задачи: ${e.toString()}'),
      );
    }
  }

  _addTask(event, emit) async {
    try {
      await _taskUseCase.setTask(
        ChangeTaskRequest(
          title: event.title,
          completed: false,
        ),
      );
      await _getAllTasksWithCategory(category, emit);
    } catch (e) {
      emit(TaskState.error('Не удалось добавить задачу: ${e.toString()}'));
    }
  }

  _toggleTask(event, emit) async {
    try {
      await _taskUseCase.setTask(
        ChangeTaskRequest(
          id: event.id,
          title: event.title,
          completed: event.completed,
        ),
      );
      await _getAllTasksWithCategory(category, emit);
    } catch (e) {
      emit(TaskState.error('Не удалось изменить задачу: ${e.toString()}'));
    }
  }

  _deleteTask(event, emit) async {
    try {
      await _taskUseCase.deleteTask(TaskIdRequest(id: event.id));
      await _getAllTasksWithCategory(category, emit);
    } catch (e) {
      emit(TaskState.error('Не удалось удалить задачу: ${e.toString()}'));
    }
  }

  _changeCategory(_ChangeCategory event, emit) async {
    try {
      category = event.category;
      await _getAllTasksWithCategory(category, emit);
    } catch (e) {
      emit(TaskState.error('Не удалось удалить задачу: ${e.toString()}'));
    }
  }

  _getAllTasksWithCategory(category, emit) async {
    try {
      List<TaskEntity> tasks;
      if (category == 0) {
        tasks = await _taskUseCase.getTasks(const TaskRequest(userId: 1));
      } else if (category == 1) {
        tasks = await _taskUseCase.getTasksByCompletedOrNo(
          const TaskCompleteOrNoRequest(completed: true),
        );
      } else {
        tasks = await _taskUseCase.getTasksByCompletedOrNo(
          const TaskCompleteOrNoRequest(completed: false),
        );
      }
      emit(TaskState.loaded(tasks: tasks, category: category));
    } catch (e) {
      emit(TaskState.error('Не удалось получить задачу: ${e.toString()}'));
    }
  }
}
