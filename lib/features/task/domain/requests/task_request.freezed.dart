// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskRequest _$TaskRequestFromJson(Map<String, dynamic> json) {
  return _TaskRequest.fromJson(json);
}

/// @nodoc
mixin _$TaskRequest {
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this TaskRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskRequestCopyWith<TaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskRequestCopyWith<$Res> {
  factory $TaskRequestCopyWith(
          TaskRequest value, $Res Function(TaskRequest) then) =
      _$TaskRequestCopyWithImpl<$Res, TaskRequest>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$TaskRequestCopyWithImpl<$Res, $Val extends TaskRequest>
    implements $TaskRequestCopyWith<$Res> {
  _$TaskRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskRequestImplCopyWith<$Res>
    implements $TaskRequestCopyWith<$Res> {
  factory _$$TaskRequestImplCopyWith(
          _$TaskRequestImpl value, $Res Function(_$TaskRequestImpl) then) =
      __$$TaskRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$TaskRequestImplCopyWithImpl<$Res>
    extends _$TaskRequestCopyWithImpl<$Res, _$TaskRequestImpl>
    implements _$$TaskRequestImplCopyWith<$Res> {
  __$$TaskRequestImplCopyWithImpl(
      _$TaskRequestImpl _value, $Res Function(_$TaskRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$TaskRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskRequestImpl implements _TaskRequest {
  const _$TaskRequestImpl({required this.userId});

  factory _$TaskRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskRequestImplFromJson(json);

  @override
  final int userId;

  @override
  String toString() {
    return 'TaskRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of TaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskRequestImplCopyWith<_$TaskRequestImpl> get copyWith =>
      __$$TaskRequestImplCopyWithImpl<_$TaskRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskRequestImplToJson(
      this,
    );
  }
}

abstract class _TaskRequest implements TaskRequest {
  const factory _TaskRequest({required final int userId}) = _$TaskRequestImpl;

  factory _TaskRequest.fromJson(Map<String, dynamic> json) =
      _$TaskRequestImpl.fromJson;

  @override
  int get userId;

  /// Create a copy of TaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskRequestImplCopyWith<_$TaskRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
