// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_id_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskIdRequest _$TaskIdRequestFromJson(Map<String, dynamic> json) {
  return _TaskIdRequest.fromJson(json);
}

/// @nodoc
mixin _$TaskIdRequest {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this TaskIdRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskIdRequestCopyWith<TaskIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskIdRequestCopyWith<$Res> {
  factory $TaskIdRequestCopyWith(
          TaskIdRequest value, $Res Function(TaskIdRequest) then) =
      _$TaskIdRequestCopyWithImpl<$Res, TaskIdRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$TaskIdRequestCopyWithImpl<$Res, $Val extends TaskIdRequest>
    implements $TaskIdRequestCopyWith<$Res> {
  _$TaskIdRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskIdRequestImplCopyWith<$Res>
    implements $TaskIdRequestCopyWith<$Res> {
  factory _$$TaskIdRequestImplCopyWith(
          _$TaskIdRequestImpl value, $Res Function(_$TaskIdRequestImpl) then) =
      __$$TaskIdRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$TaskIdRequestImplCopyWithImpl<$Res>
    extends _$TaskIdRequestCopyWithImpl<$Res, _$TaskIdRequestImpl>
    implements _$$TaskIdRequestImplCopyWith<$Res> {
  __$$TaskIdRequestImplCopyWithImpl(
      _$TaskIdRequestImpl _value, $Res Function(_$TaskIdRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TaskIdRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskIdRequestImpl implements _TaskIdRequest {
  const _$TaskIdRequestImpl({required this.id});

  factory _$TaskIdRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskIdRequestImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'TaskIdRequest(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskIdRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TaskIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskIdRequestImplCopyWith<_$TaskIdRequestImpl> get copyWith =>
      __$$TaskIdRequestImplCopyWithImpl<_$TaskIdRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskIdRequestImplToJson(
      this,
    );
  }
}

abstract class _TaskIdRequest implements TaskIdRequest {
  const factory _TaskIdRequest({required final int id}) = _$TaskIdRequestImpl;

  factory _TaskIdRequest.fromJson(Map<String, dynamic> json) =
      _$TaskIdRequestImpl.fromJson;

  @override
  int get id;

  /// Create a copy of TaskIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskIdRequestImplCopyWith<_$TaskIdRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
