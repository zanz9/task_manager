// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_task_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeTaskRequest _$ChangeTaskRequestFromJson(Map<String, dynamic> json) {
  return _ChangeTaskRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangeTaskRequest {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this ChangeTaskRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangeTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeTaskRequestCopyWith<ChangeTaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeTaskRequestCopyWith<$Res> {
  factory $ChangeTaskRequestCopyWith(
          ChangeTaskRequest value, $Res Function(ChangeTaskRequest) then) =
      _$ChangeTaskRequestCopyWithImpl<$Res, ChangeTaskRequest>;
  @useResult
  $Res call({int? id, String title, bool completed});
}

/// @nodoc
class _$ChangeTaskRequestCopyWithImpl<$Res, $Val extends ChangeTaskRequest>
    implements $ChangeTaskRequestCopyWith<$Res> {
  _$ChangeTaskRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeTaskRequestImplCopyWith<$Res>
    implements $ChangeTaskRequestCopyWith<$Res> {
  factory _$$ChangeTaskRequestImplCopyWith(_$ChangeTaskRequestImpl value,
          $Res Function(_$ChangeTaskRequestImpl) then) =
      __$$ChangeTaskRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, bool completed});
}

/// @nodoc
class __$$ChangeTaskRequestImplCopyWithImpl<$Res>
    extends _$ChangeTaskRequestCopyWithImpl<$Res, _$ChangeTaskRequestImpl>
    implements _$$ChangeTaskRequestImplCopyWith<$Res> {
  __$$ChangeTaskRequestImplCopyWithImpl(_$ChangeTaskRequestImpl _value,
      $Res Function(_$ChangeTaskRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangeTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? completed = null,
  }) {
    return _then(_$ChangeTaskRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeTaskRequestImpl implements _ChangeTaskRequest {
  const _$ChangeTaskRequestImpl(
      {this.id, required this.title, required this.completed});

  factory _$ChangeTaskRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeTaskRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString() {
    return 'ChangeTaskRequest(id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTaskRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, completed);

  /// Create a copy of ChangeTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTaskRequestImplCopyWith<_$ChangeTaskRequestImpl> get copyWith =>
      __$$ChangeTaskRequestImplCopyWithImpl<_$ChangeTaskRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeTaskRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangeTaskRequest implements ChangeTaskRequest {
  const factory _ChangeTaskRequest(
      {final int? id,
      required final String title,
      required final bool completed}) = _$ChangeTaskRequestImpl;

  factory _ChangeTaskRequest.fromJson(Map<String, dynamic> json) =
      _$ChangeTaskRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  bool get completed;

  /// Create a copy of ChangeTaskRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTaskRequestImplCopyWith<_$ChangeTaskRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
