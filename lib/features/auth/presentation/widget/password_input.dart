import 'package:flutter/material.dart';
import 'package:task_manager/core/widgets/primary_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.passwordController,
    this.isSecond = false,
    this.onSubmitted,
  });
  final TextEditingController passwordController;
  final bool isSecond;
  final Function()? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return PrimaryInput(
      controller: passwordController,
      hintText: !isSecond ? 'Пароль' : 'Повторите пароль',
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      onSubmitted: (p0) {
        if (onSubmitted != null) onSubmitted!();
      },
      prefixIcon: const RotatedBox(
        quarterTurns: 1,
        child: Icon(Icons.key_outlined),
      ),
    );
  }
}
