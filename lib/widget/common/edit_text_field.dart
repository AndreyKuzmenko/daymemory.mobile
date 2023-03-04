import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter/material.dart';

class EditTextField extends StatefulWidget {
  const EditTextField({Key? key, required this.text, required this.placeholder, required this.textChangedCommand}) : super(key: key);

  final String text;

  final String placeholder;

  final TypedFunctionHolder<String> textChangedCommand;

  @override
  State<EditTextField> createState() => _EditTextFieldState();
}

class _EditTextFieldState extends State<EditTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.text);
    _controller.addListener(() {
      widget.textChangedCommand.command(_controller.text);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      textCapitalization: TextCapitalization.sentences,
      keyboardAppearance: Brightness.light,
      keyboardType: TextInputType.multiline,
      autofocus: _controller.text.isEmpty,
      maxLines: null,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return "Can't be empty";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: null,
        contentPadding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
        hintText: widget.placeholder,
        enabledBorder: null,
        focusedBorder: null,
      ),
    );
  }
}
