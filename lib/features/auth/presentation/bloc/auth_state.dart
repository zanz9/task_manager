part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.loaded() = Loaded;
  const factory AuthState.success() = Success;
  const factory AuthState.failure({required String message}) = Failure;
}
