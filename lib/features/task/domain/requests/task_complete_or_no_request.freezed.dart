// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_complete_or_no_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskCompleteOrNoRequest _$TaskCompleteOrNoRequestFromJson(
    Map<String, dynamic> json) {
  return _TaskCompleteOrNoRequest.fromJson(json);
}

/// @nodoc
mixin _$TaskCompleteOrNoRequest {
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this TaskCompleteOrNoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskCompleteOrNoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCompleteOrNoRequestCopyWith<TaskCompleteOrNoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCompleteOrNoRequestCopyWith<$Res> {
  factory $TaskCompleteOrNoRequestCopyWith(TaskCompleteOrNoRequest value,
          $Res Function(TaskCompleteOrNoRequest) then) =
      _$TaskCompleteOrNoRequestCopyWithImpl<$Res, TaskCompleteOrNoRequest>;
  @useResult
  $Res call({bool completed});
}

/// @nodoc
class _$TaskCompleteOrNoRequestCopyWithImpl<$Res,
        $Val extends TaskCompleteOrNoRequest>
    implements $TaskCompleteOrNoRequestCopyWith<$Res> {
  _$TaskCompleteOrNoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskCompleteOrNoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskCompleteOrNoRequestImplCopyWith<$Res>
    implements $TaskCompleteOrNoRequestCopyWith<$Res> {
  factory _$$TaskCompleteOrNoRequestImplCopyWith(
          _$TaskCompleteOrNoRequestImpl value,
          $Res Function(_$TaskCompleteOrNoRequestImpl) then) =
      __$$TaskCompleteOrNoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool completed});
}

/// @nodoc
class __$$TaskCompleteOrNoRequestImplCopyWithImpl<$Res>
    extends _$TaskCompleteOrNoRequestCopyWithImpl<$Res,
        _$TaskCompleteOrNoRequestImpl>
    implements _$$TaskCompleteOrNoRequestImplCopyWith<$Res> {
  __$$TaskCompleteOrNoRequestImplCopyWithImpl(
      _$TaskCompleteOrNoRequestImpl _value,
      $Res Function(_$TaskCompleteOrNoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskCompleteOrNoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completed = null,
  }) {
    return _then(_$TaskCompleteOrNoRequestImpl(
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskCompleteOrNoRequestImpl implements _TaskCompleteOrNoRequest {
  const _$TaskCompleteOrNoRequestImpl({required this.completed});

  factory _$TaskCompleteOrNoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskCompleteOrNoRequestImplFromJson(json);

  @override
  final bool completed;

  @override
  String toString() {
    return 'TaskCompleteOrNoRequest(completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCompleteOrNoRequestImpl &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, completed);

  /// Create a copy of TaskCompleteOrNoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCompleteOrNoRequestImplCopyWith<_$TaskCompleteOrNoRequestImpl>
      get copyWith => __$$TaskCompleteOrNoRequestImplCopyWithImpl<
          _$TaskCompleteOrNoRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskCompleteOrNoRequestImplToJson(
      this,
    );
  }
}

abstract class _TaskCompleteOrNoRequest implements TaskCompleteOrNoRequest {
  const factory _TaskCompleteOrNoRequest({required final bool completed}) =
      _$TaskCompleteOrNoRequestImpl;

  factory _TaskCompleteOrNoRequest.fromJson(Map<String, dynamic> json) =
      _$TaskCompleteOrNoRequestImpl.fromJson;

  @override
  bool get completed;

  /// Create a copy of TaskCompleteOrNoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskCompleteOrNoRequestImplCopyWith<_$TaskCompleteOrNoRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
