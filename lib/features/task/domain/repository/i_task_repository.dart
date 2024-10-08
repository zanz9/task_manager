import 'package:task_manager/features/task/domain/entities/task_entity.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';

abstract class ITaskRepository {
  Future<List<TaskEntity>> getTasks(TaskRequest request);
  Future<List<TaskEntity>> setTask(ChangeTaskRequest request);
}
