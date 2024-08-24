import 'package:flutter/material.dart';

class LoginOptionItem extends StatelessWidget {
  const LoginOptionItem({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey[200],
        child: Image.asset(imagePath),
      ),
    );
  }
}
