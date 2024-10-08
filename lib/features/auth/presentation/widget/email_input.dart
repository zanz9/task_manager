import 'package:flutter/material.dart';
import 'package:task_manager/core/widgets/primary_input.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    required this.emailController,
    this.onSubmitted,
  });
  final TextEditingController emailController;
  final Function()? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return PrimaryInput(
      controller: emailController,
      hintText: 'Логин',
      obscureText: false,
      onSubmitted: (p0) {
        if (onSubmitted != null) onSubmitted!();
      },
      prefixIcon: const Icon(Icons.email_rounded),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
