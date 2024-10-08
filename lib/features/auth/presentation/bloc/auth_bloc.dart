import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String login = '';
  String password = '';

  AuthBloc() : super(const AuthState.initial()) {
    on<_Started>((event, emit) => emit(const AuthState.loaded()));
    on<_Login>((event, emit) => _login(event, emit));
  }

  _login(_Login event, Emitter<AuthState> emit) {
    if (event.email == login && event.password == password) {
      emit(const AuthState.success());
    } else {
      String errorMessageFromDb = 'Неверный логин или пароль';
      emit(AuthState.failure(message: errorMessageFromDb));
    }
  }
}
