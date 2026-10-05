import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField.CustomTextField({
    this.hintText,
    this.onChanged,
    this.obsecureText = false,
    this.textInputType,
  });
  Function(String)? onChanged;
  String? hintText;
  bool? obsecureText;
  TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecureText!,
      keyboardType: textInputType,

      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(16),
        ),

        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
