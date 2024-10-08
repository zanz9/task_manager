import 'package:flutter/material.dart';
import 'package:task_manager/core/theme/colors.dart';

class PrimaryInput extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool autoFocus;

  const PrimaryInput({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.prefixIcon,
    this.onChange,
    this.keyboardType,
    this.focusNode,
    this.autoFocus = true,
    this.onSubmitted,
    this.suffixIcon,
  });

  @override
  State<PrimaryInput> createState() => _PrimaryInputState();
}

class _PrimaryInputState extends State<PrimaryInput> {
  bool obscureText = false;
  @override
  void initState() {
    obscureText = widget.obscureText;
    super.initState();
  }

  toggleObscure() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      autofocus: widget.focusNode != null && widget.autoFocus,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      obscureText: obscureText,
      onSubmitted: widget.onSubmitted,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.hintColor),
        ),
        fillColor: AppColors.primary,
        filled: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: AppColors.hintColor),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: toggleObscure,
                icon: obscureText
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              )
            : widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
      ),
      onChanged: widget.onChange,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
    );
  }
}
