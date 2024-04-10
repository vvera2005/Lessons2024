import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {this.controller, this.hintText, this.onChanged, super.key});

  final void Function(String)? onChanged;
  final String? hintText;
  final TextEditingController? controller;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final GlobalKey<FormFieldState> _globalKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _globalKey,
      controller: widget.controller,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        filled: true,
        fillColor: const Color(0xff363636),
      ),
    );
  }
}
