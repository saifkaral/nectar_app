import 'package:flutter/material.dart';

class TextFieldBox extends StatefulWidget {
  final String fieldType;
  final TextEditingController? controller;
  final bool isPasswordField;

  const TextFieldBox({
    super.key,
    required this.fieldType,
    this.controller,
    this.isPasswordField = false,
  });

  @override
  State<TextFieldBox> createState() => _TextFieldBoxState();
}

class _TextFieldBoxState extends State<TextFieldBox> {
  late bool _obscureText = widget.isPasswordField;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        label: Text(
          widget.fieldType,
          style: const TextStyle(
            color: Color(0xFF7C7C7C),
            fontWeight: FontWeight.bold,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFE2E2E2)),
        ),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                onPressed: _toggleObscureText,
                icon: Icon(
                  _obscureText
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_rounded,
                ),
              )
            : null,
      ),
    );
  }
}
