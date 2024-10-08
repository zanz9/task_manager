import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_request.freezed.dart';

@freezed
class TaskRequest with _$TaskRequest {
  const factory TaskRequest() = _TaskRequest;
}
