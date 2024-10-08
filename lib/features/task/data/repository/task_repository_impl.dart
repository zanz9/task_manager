import 'package:injectable/injectable.dart';
import 'package:task_manager/features/task/data/data_sources/local/i_task_local.dart';
import 'package:task_manager/features/task/data/data_sources/remote/i_task_remote.dart';
import 'package:task_manager/features/task/data/mappers/task_dto2entity_mapper.dart';
import 'package:task_manager/features/task/data/models/task_dto.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';
import 'package:task_manager/features/task/domain/repository/i_task_repository.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';
import 'package:task_manager/features/task/domain/requests/task_id_request.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';

@Named.from(ITaskRepository)
@LazySingleton(as: ITaskRepository)
class TaskRepositoryImpl implements ITaskRepository {
  final ITaskRemoteDataSource _taskRemoteDataSource;
  final ITaskLocalDataSource _taskLocalDataSource;

  TaskRepositoryImpl(
    this._taskRemoteDataSource,
    this._taskLocalDataSource,
  );

  @override
  Future<List<TaskEntity>> getTasks(TaskRequest request) async {
    try {
      final localTasks = await _taskLocalDataSource.getTasks();
      if (localTasks.isNotEmpty) {
        return localTasks
            .map((dto) => TaskDto2EntityMapper().map(dto))
            .toList();
      }

      final remoteTasks = await _taskRemoteDataSource.getTasks(request);
      await _taskLocalDataSource.setTasks(remoteTasks);
      return remoteTasks.map((dto) => TaskDto2EntityMapper().map(dto)).toList();
    } catch (e) {
      return throw Exception('Failed to get tasks: $e');
    }
  }

  @override
  Future<List<TaskEntity>> setTask(ChangeTaskRequest request) async {
    try {
      List<TaskDto> localTasks = await _taskLocalDataSource.setTask(request);
      return localTasks.map((dto) => TaskDto2EntityMapper().map(dto)).toList();
    } catch (e) {
      return throw Exception('Failed to get tasks: $e');
    }
  }

  @override
  Future<List<TaskEntity>> deleteTask(TaskIdRequest request) async {
    try {
      final localTasks = await _taskLocalDataSource.deleteTask(request);
      return localTasks.map((dto) => TaskDto2EntityMapper().map(dto)).toList();
    } catch (e) {
      return throw Exception('Failed to delete task: $e');
    }
  }
}
