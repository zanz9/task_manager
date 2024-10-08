import 'package:injectable/injectable.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';
import 'package:task_manager/features/task/domain/repository/i_task_repository.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';
import 'package:task_manager/features/task/domain/requests/task_complete_or_no_request.dart';
import 'package:task_manager/features/task/domain/requests/task_id_request.dart';
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

  Future<List<TaskEntity>> deleteTask(TaskIdRequest request) async {
    return await _taskRepository.deleteTask(request);
  }

  Future<List<TaskEntity>> getTasksByCompletedOrNo(
      TaskCompleteOrNoRequest request) async {
    return await _taskRepository.getTasksByCompletedOrNo(request);
  }
}
