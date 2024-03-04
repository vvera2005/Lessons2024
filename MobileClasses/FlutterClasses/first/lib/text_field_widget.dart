import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {this.validator,
      this.hintText,
      this.onChanged,
      this.obscureText = false,
      super.key});

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? hintText;
  final bool obscureText;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final GlobalKey<FormFieldState> _globalKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _globalKey,
      onChanged: (value) {
        // if (_globalKey.currentState?.validate() == true) {
        widget.onChanged?.call(value);
        // }
      },
      validator: widget.validator,
      style: const TextStyle(fontSize: 20),
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: const Color.fromARGB(255, 246, 248, 250),
      ),
    );
  }
}
