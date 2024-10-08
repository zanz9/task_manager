import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_manager/core/di/di_init.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';
import 'package:task_manager/features/task/domain/usecases/task_usecase.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const _Initial()) {
    on<TaskEvent>((event, emit) async {
      emit(const TaskState.loading());
      try {
        final tasks = await getIt<TaskUseCase>().getTasks(
          const TaskRequest(),
        );
        emit(TaskState.loaded(tasks));
      } catch (e) {
        emit(
          TaskState.error('Не удалось загрузить задачи: ${e.toString()}'),
        );
      }
    });
  }
}
