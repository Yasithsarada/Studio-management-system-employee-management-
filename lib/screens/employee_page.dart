import 'package:flutter/material.dart';
import 'package:studio_management_student/screens/employee_login_screen.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).size.height);

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromRGBO(76, 115, 216, 1),
          Color.fromRGBO(100, 74, 181, 0.85)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 164.859, 0, 0),
          alignment: Alignment.center,
          width: 304.07,
          height: 304.07,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color.fromRGBO(110, 140, 217, 1)),
          child: Image.asset("assets/images/logo 1.png",
              alignment: Alignment.center),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            alignment: Alignment.center,
            width: 328,
            height: 40,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Capture Dreams",
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Text(
                    "We're not just a team",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  // SizedBox(height: 16,),
                  const Text(
                    "we're a family",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    ),
                    style: const ButtonStyle(),
                    child: const Text("Next"),
                  ), //
                ]),

            // decoration: BoxDecoration(
            //   shape: BoxShape.circle,
            //   color: Color(0xFFe0f2f1),
            // ),
          ),
        )
      ]),
    );
  }
}
