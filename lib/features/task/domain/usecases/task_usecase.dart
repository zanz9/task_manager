import 'package:injectable/injectable.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';
import 'package:task_manager/features/task/domain/repository/i_task_repository.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';

@lazySingleton
class TaskUseCase {
  final ITaskRepository _taskRepository;

  TaskUseCase(this._taskRepository);

  Future<List<TaskEntity>> getTasks(TaskRequest request) async {
    return await _taskRepository.getTasks(request);
  }

  Future<List<TaskEntity>> setTask(ChangeTaskRequest request) async {
    return await _taskRepository.setTask(request);
  }
}
