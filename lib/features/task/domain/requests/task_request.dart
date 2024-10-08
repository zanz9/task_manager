import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_request.freezed.dart';
part 'task_request.g.dart';

@freezed
class TaskRequest with _$TaskRequest {
  const factory TaskRequest({
    required int userId,
  }) = _TaskRequest;

  factory TaskRequest.fromJson(Map<String, dynamic> json) =>
      _$TaskRequestFromJson(json);
}
