import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:task_manager/core/api/endpoints.dart';
import 'package:task_manager/features/task/data/data_sources/remote/i_task_remote.dart';
import 'package:task_manager/features/task/data/models/task_dto.dart';
import 'package:task_manager/features/task/domain/requests/task_request.dart';

@LazySingleton(as: ITaskRemoteDataSource)
class TaskRemoteImpl implements ITaskRemoteDataSource {
  @override
  Future<List<TaskDto>> getTasks(TaskRequest request) async {
    try {
      final dio = Dio();
      final response = await dio.get(EndPoints.baseUrl + EndPoints.todos);

      if (response.statusCode == 200) {
        final data = response.data as List<dynamic>;
        return data.map((e) => TaskDto.fromJson(e)).toList();
      } else {
        return throw Exception('Failed to load tasks: ${response.statusCode}');
      }
    } catch (e) {
      return throw Exception('Failed to load tasks: ${e.toString()}');
    }
  }
}
