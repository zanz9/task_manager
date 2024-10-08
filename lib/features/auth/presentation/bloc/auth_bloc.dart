import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

//TODO: Bloc with freezed
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String login = '';
  String password = '';

  AuthBloc() : super(AuthInitial()) {
    on<AuthInitialEvent>(_init);
    on<AuthLoginEvent>(_login);
  }

  _init(AuthInitialEvent event, Emitter<AuthState> emit) {
    emit(AuthLoading());
    emit(AuthLoaded());
  }

  _login(AuthLoginEvent event, Emitter<AuthState> emit) {
    if (event.email == login && event.password == password) {
      emit(AuthSuccess());
    } else {
      String errorMessageFromDb = 'Неверный логин или пароль';
      emit(AuthFailure(message: errorMessageFromDb));
    }
  }
}
