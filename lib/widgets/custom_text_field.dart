import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.textLabel,
    this.validator,
    this.onChanged,
    required this.obSecure,
    this.keyboardType,
  });

  final TextEditingController controller;

  final String textLabel;

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool obSecure;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obSecure,
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      style: const TextStyle(
        color: Colors.black,
      ),
      cursorColor: const Color(0xFFDEDEDE),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: const BorderSide(color: Color(0xFFDEDEDE)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: const BorderSide(color: Color(0xFFDEDEDE)),
        ),
        contentPadding: const EdgeInsets.all(15),
        fillColor: const Color(0xFFDEDEDE),
        focusColor: const Color(0xFFDEDEDE),
        // enabledBorder: const InputBorder(),
        labelStyle: const TextStyle(
            color: Color(0xFFDEDEDE),
            fontSize: 15,
            fontWeight: FontWeight.w100),
        labelText: textLabel,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(
                color: Color(0xFFDEDEDE), style: BorderStyle.none)),
      ),
    );

  }
}
