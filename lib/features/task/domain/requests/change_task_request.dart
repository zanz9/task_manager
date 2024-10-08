import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_task_request.freezed.dart';
part 'change_task_request.g.dart';

@freezed
class ChangeTaskRequest with _$ChangeTaskRequest {
  const factory ChangeTaskRequest({
    int? id,
    required String title,
    required bool completed,
  }) = _ChangeTaskRequest;

  factory ChangeTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeTaskRequestFromJson(json);
}
