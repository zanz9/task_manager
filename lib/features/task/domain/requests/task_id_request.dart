import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_id_request.freezed.dart';
part 'task_id_request.g.dart';

@freezed
class TaskIdRequest with _$TaskIdRequest {
  const factory TaskIdRequest({
    required int id,
  }) = _TaskIdRequest;

  factory TaskIdRequest.fromJson(Map<String, dynamic> json) =>
      _$TaskIdRequestFromJson(json);
}
