import 'package:task_manager/features/task/data/models/task_dto.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';

class TaskEntity2DtoMapper {
  TaskDto map(TaskEntity entity) {
    int someUserIdFromAuth = 1;
    return TaskDto(
      userId: someUserIdFromAuth,
      id: entity.id,
      title: entity.title,
      completed: entity.completed,
    );
  }
}
