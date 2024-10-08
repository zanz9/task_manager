import 'package:task_manager/features/task/data/models/task_dto.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';

abstract class ITaskRemoteDataSource {
  Future<List<TaskDto>> getTasks(TaskRequest request);
}
