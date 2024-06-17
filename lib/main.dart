import 'package:flutter/material.dart';
import 'package:studio_management_student/screens/employee_page.dart';

// final colorScheme = ColorScheme.fromSeed(
//   brightness: Brightness.dark,
//   seedColor: Color.fromARGB(255, 40, 193, 23),
//   primary: Color.fromARGB(255, 48, 129, 111),
//   background: const Color(0xff251f71),
// );

// final theme = ThemeData().copyWith(
//   // useMaterial3: true,
//   scaffoldBackgroundColor: colorScheme.background,
//   colorScheme: colorScheme,
//   textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
//     titleSmall: GoogleFonts.ubuntuCondensed(
//       fontWeight: FontWeight.bold,
//     ),
//     titleMedium: GoogleFonts.ubuntuCondensed(
//       fontWeight: FontWeight.bold,
//     ),
//     titleLarge: GoogleFonts.ubuntuCondensed(
//       fontWeight: FontWeight.bold,
//     ),
//   ),
// );

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.blue,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue, primary: const Color(0xff251f71)),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.red,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
      primary: Colors.amber),
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      // ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //       seedColor: const Color.fromRGBO(193, 173, 254, 1)),
      //   useMaterial3: true,
      // ),
      home: const Scaffold(
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
      //  routes: {
      //   "/shop": (context) => ShopPage(),
      //   "/cart": (context) => CartPage()
      // },
    );
  }
}
