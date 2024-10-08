part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthLoaded extends AuthState {}

final class AuthSuccess extends AuthLoaded {}

final class AuthFailure extends AuthLoaded {
  final String message;

  AuthFailure({required this.message});
}
