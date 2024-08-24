import 'package:flutter/material.dart';
import 'package:mentor/widgets/custom_text_field.dart';
import 'package:mentor/widgets/login_button.dart';

import '../widgets/custom_login_option.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Text(
                  'Please Enter Your Login Details Below',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                CustomTextField(
                  controller: passwordController,
                  textLabel: 'E-Mail',
                  isPassword: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                CustomTextField(
                  controller: emailController,
                  textLabel: 'Password',
                  isPassword: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.045,
                ),
                const LoginButton(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                const Row(
                  children: [
                    Expanded(child: Divider(color: Color(0xFFB7B7B7))),
                    Text(
                      ' Or Better Yet... ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 15,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                    Expanded(child: Divider(color: Color(0xFFB7B7B7))),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                const CustomLoginOption(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
