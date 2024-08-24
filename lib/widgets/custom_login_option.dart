import 'package:flutter/material.dart';

import 'login_option_item.dart';

class CustomLoginOption extends StatelessWidget {
  const CustomLoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LoginOptionItem(imagePath: 'assets/images/Google.png'),
        LoginOptionItem(imagePath: 'assets/images/Facebook.png'),
        LoginOptionItem(imagePath: 'assets/images/Apple.png'),
      ],
    );
  }
}

