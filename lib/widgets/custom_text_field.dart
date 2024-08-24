import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.textLabel,
    this.validator,
    this.onChanged,
    required this.isPassword,
    this.keyboardType,
  });

  final TextEditingController controller;

  final String textLabel;

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool isPassword;
  final TextInputType? keyboardType;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: widget.isPassword ? obscureText : false,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      style: const TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        prefixIcon: widget.isPassword
            ? const Icon(Icons.lock_outline)
            : const Icon(Icons.mail_rounded),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: obscureText
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off_outlined),
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
              )
            : const SizedBox(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        contentPadding: const EdgeInsets.all(15),
        fillColor: const Color(0xFFDEDEDE),
        focusColor: const Color(0xFFDEDEDE),
        // enabledBorder: const InputBorder(),
        labelStyle: const TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w100),
        labelText: widget.textLabel,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide:
                const BorderSide(color: Colors.grey, style: BorderStyle.none)),
      ),
    );
  }
}
