import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: ShapeDecoration(
              color: const Color(0xff1b2dbd),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x591B2DBD),
                  blurRadius: 40,
                  offset: Offset(0, 18),
                  spreadRadius: -12,
                )
              ],
            ),
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 22),
            child: Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Image.asset(
                    'assets/animation/48fbb1e081e58874cdcf56047fa77032.gif',
                    height: 33,
                    width: 33,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
