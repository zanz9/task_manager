import 'package:flutter/material.dart';
import 'package:task_manager/core/widgets/primary_button.dart';
import 'package:task_manager/features/auth/presentation/widget/email_input.dart';
import 'package:task_manager/features/auth/presentation/widget/password_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    login() {}

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LockIconWithAnimation(
                //   shakeKey: shakeKey,
                //   color: errorText == 'Добро пожаловать в TesterX'
                //       ? Colors.black
                //       : Colors.red,
                // ),
                const SizedBox(height: 50),
                Text(
                  'errorText',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 25),
                EmailInput(
                    emailController: emailController, onSubmitted: login),
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
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: Text(
                          'Забыли пароль?',
                          style: TextStyle(color: Colors.grey.shade600),
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
                    child: const Text(
                      'Войти',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Еще не зарегистрованы?',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Зарегистрироваться',
                          style: TextStyle(
                            color: Colors.blue,
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
    );
  }
}
