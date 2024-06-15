import 'package:flutter/material.dart';
import 'package:studio_management_student/screens/employee_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(193, 173, 254, 1)),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: EmployeeScreen(),
        // bottomNavigationBar: BottomNavigationBar(
        //   // onTap: (e) {},
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.abc),
        //     ),
        //     // BottomNavigationBarItem(
        //     //   icon: Icon(Icons.abc),
        //     // )
        
        //   ],
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       label: "ff",
        //       icon: Icon(
        //         Icons.abc_outlined,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "ss",
        //       icon: Icon(
        //         Icons.abc_outlined,
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
