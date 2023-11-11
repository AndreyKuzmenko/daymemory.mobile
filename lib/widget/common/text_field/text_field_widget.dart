import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool? obscureText;
  final bool? autofocus;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    required this.validator,
    this.autofocus,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    //final appTheme = AppThemeWidget.getTheme(context);
    return TextFormField(
      controller: controller,
      validator: validator,
      autofocus: autofocus ?? false,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        hintText: placeholder,
      ),
    );
  }
}
