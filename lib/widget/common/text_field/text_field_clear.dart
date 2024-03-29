import 'package:flutter/material.dart';

class TextFieldClear extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool? obscureText;
  final bool? autofocus;
  final bool? readOnly;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const TextFieldClear({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    required this.validator,
    this.readOnly,
    this.autofocus,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    //final appTheme = AppThemeWidget.getTheme(context);

    return TextFormField(
      controller: controller,
      validator: validator,
      maxLines: 1,
      readOnly: readOnly ?? false,
      autofocus: autofocus ?? false,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        isDense: true,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        labelText: null,
        focusedBorder: InputBorder.none,
        contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        hintText: placeholder,
      ),
    );
  }
}
