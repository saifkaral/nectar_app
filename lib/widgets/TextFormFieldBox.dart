import 'package:flutter/material.dart';

class TextFieldBox extends StatefulWidget {
  final String fieldType;
  final TextEditingController? controller;
  bool obscureText;
  TextFieldBox({required this.fieldType,  required this.controller,this.obscureText = false,super.key});

  @override
  State<TextFieldBox> createState() => _TextFieldBoxState();
}

class _TextFieldBoxState extends State<TextFieldBox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(widget.fieldType,style: TextStyle(color: Color.fromARGB(255,124, 124, 124), fontWeight: FontWeight.bold),),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color: Color.fromARGB(255, 226, 226, 226))),
        enabledBorder: UnderlineInputBorder(borderSide:BorderSide(color: Color.fromARGB(255, 226, 226, 226))),
        suffixIcon: widget.fieldType == "Password"? IconButton(
          onPressed: () {
            setState(() {
              if (widget.obscureText == true) {
                widget.obscureText = false;
              }
              else if (widget.obscureText == false) {
                widget.obscureText = true;
                
              }
            }
            );
        }, 
        icon:(widget.obscureText? Icon(Icons.visibility_rounded): Icon(Icons.visibility_off))): null
      ),
      controller: widget.controller,
      obscureText: widget.obscureText,
    );
  }
}