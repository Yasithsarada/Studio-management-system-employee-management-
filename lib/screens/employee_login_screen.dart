import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(104, 90, 101, 0),
          child: Image.asset(
            "assets/images/logo 1.png",
            // alignment: Alignment.center,
            width: 201,
            height: 94,
          ),
        ),
        const SizedBox(
          height: 51,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 51, 183.72, 0),
          child: const Text(
            "Welcome Back!",
            style: TextStyle(fontSize: 20),
          ),
        ),
        // TextField(style: Border.all(color: Colors.black12),)
      ],
    );
  }
}
