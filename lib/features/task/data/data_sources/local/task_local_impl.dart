import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager/core/di/di_init.dart';
import 'package:task_manager/features/task/data/data_sources/local/i_task_local.dart';
import 'package:task_manager/features/task/data/models/task_dto.dart';
import 'package:task_manager/features/task/domain/requests/change_task_request.dart';

@LazySingleton(as: ITaskLocalDataSource)
class TaskLocalImpl implements ITaskLocalDataSource {
  final SharedPreferences _sharedPreferences = getIt<SharedPreferences>();

  @override
  Future<List<TaskDto>> getTasks() async {
    final jsonStrings = _sharedPreferences.getStringList('tasks') ?? [];
    List<TaskDto> result = jsonStrings.map((jsonString) {
      return TaskDto.fromJson(jsonDecode(jsonString));
    }).toList();

    return result;
  }

  @override
  Future<void> setTasks(List<TaskDto> tasks) async {
    final json = tasks.map((task) => task.toJson()).toList();
    final jsonStrings = json.map((task) => task.toString()).toList();
    await _sharedPreferences.setStringList('tasks', jsonStrings);
  }

  @override
  Future<List<TaskDto>> setTask(ChangeTaskRequest request) async {
    List<TaskDto> tasks = await getTasks();

    List<TaskDto> tasksDto = tasks.map((task) {
      if (request.id != null && task.id == request.id) {
        return TaskDto(
          id: task.id,
          title: request.title,
          completed: request.completed,
          userId: 1,
        );
      }
      return TaskDto(
        id: task.id,
        title: request.title,
        completed: request.completed,
        userId: 1,
      );
    }).toList();

    if (request.id == null) {
      tasksDto.add(TaskDto(
        id: tasksDto.last.id + 1,
        title: request.title,
        completed: request.completed,
        userId: 1,
      ));
    }

    await setTasks(tasksDto);
    return tasksDto;
  }
}
