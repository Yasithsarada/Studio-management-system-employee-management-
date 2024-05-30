import 'package:flutter/material.dart';
import 'package:studio_management_student/components/login_input_fields.dart';
import 'package:studio_management_student/screens/navigation_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
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
                margin: const EdgeInsets.fromLTRB(5, 51, 183.72, 0),
                child: const Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const LoginInputFields(
                  "Username", Color.fromARGB(177, 222, 213, 224)),
              const LoginInputFields(
                  "Password", Color.fromARGB(177, 222, 213, 224)),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: const Color.fromARGB(
                        215, 14, 19, 106), // Set background color here
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
