import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  const TextFieldInput(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border:
          OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder:
          OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        enabledBorder:
          OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      obscureText: isPassword,
      keyboardType: TextInputType.text,
    );
  }
}
