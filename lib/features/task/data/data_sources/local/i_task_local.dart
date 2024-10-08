import 'package:task_manager/features/task/data/models/task_dto.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';
import 'package:task_manager/features/task/domain/requests/task_id_request.dart';

abstract class ITaskLocalDataSource {
  Future<List<TaskDto>> getTasks();
  Future<void> setTasks(List<TaskDto> tasks);
  Future<List<TaskDto>> setTask(ChangeTaskRequest request);
  Future<List<TaskDto>> deleteTask(TaskIdRequest request);
}
