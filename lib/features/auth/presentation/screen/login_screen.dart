import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shakemywidget/flutter_shakemywidget.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager/core/router/router.dart';
import 'package:task_manager/core/theme/colors.dart';
import 'package:task_manager/core/theme/ui_constants.dart';
import 'package:task_manager/core/widgets/primary_button.dart';
import 'package:task_manager/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:task_manager/features/auth/presentation/widget/email_input.dart';
import 'package:task_manager/features/auth/presentation/widget/password_input.dart';

part '../widget/lock_icon_with_animation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final shakeKey = GlobalKey<ShakeWidgetState>();
  late AuthBloc authBloc;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    authBloc = AuthBloc()..add(const AuthEvent.started());
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    String title = 'Добро пожаловать';

    login() {
      authBloc.add(AuthEvent.login(
        email: emailController.text,
        password: passwordController.text,
      ));
    }

    return BlocProvider.value(
      value: authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Success) {
            context.replace(RouterPaths.task);
          }
        },
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: UIConstants.defaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        if (state is Failure) {
                          shakeKey.currentState?.shake();
                        }
                      },
                      builder: (context, state) {
                        return _LockIconWithAnimation(
                          shakeKey: shakeKey,
                          color: (state is Failure)
                              ? AppColors.red
                              : AppColors.black,
                        );
                      },
                    ),
                    const SizedBox(height: 50),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        if (state is Failure) {
                          return Text(
                            state.message,
                            style: theme.textTheme.titleLarge,
                          );
                        }
                        return Text(title, style: theme.textTheme.titleLarge);
                      },
                    ),
                    const SizedBox(height: 25),
                    EmailInput(
                      emailController: emailController,
                      onSubmitted: login,
                    ),
                    const SizedBox(height: 10),
                    PasswordInput(
                      passwordController: passwordController,
                      onSubmitted: login,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Забыли пароль?',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      onTap: login,
                      onTapOutside: () {},
                      isLoading: false,
                      child: Text(
                        'Войти',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Еще не зарегистрованы?',
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              'Зарегистрироваться',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: AppColors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
