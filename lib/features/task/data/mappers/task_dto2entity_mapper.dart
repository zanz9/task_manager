import 'package:task_manager/features/task/data/models/task_dto.dart';
import 'package:task_manager/features/task/domain/entities/task_entity.dart';

class TaskDto2EntityMapper {
  TaskEntity map(TaskDto dto) {
    return TaskEntity(
      id: dto.id,
      title: dto.title,
      completed: dto.completed,
    );
  }
}
