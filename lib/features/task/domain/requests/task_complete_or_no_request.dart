import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_complete_or_no_request.freezed.dart';
part 'task_complete_or_no_request.g.dart';

@freezed
class TaskCompleteOrNoRequest with _$TaskCompleteOrNoRequest {
  const factory TaskCompleteOrNoRequest({
    required bool completed,
  }) = _TaskCompleteOrNoRequest;

  factory TaskCompleteOrNoRequest.fromJson(Map<String, dynamic> json) =>
      _$TaskCompleteOrNoRequestFromJson(json);
}
