import 'package:flutter/material.dart';

import 'package:studio_management_student/components/bottom_nav_bar.dart';
import 'package:studio_management_student/screens/home_screem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _activeIndex = 0;
  void changeActiveIndex(int index) {
    print("index value : $index");
    setState(() {
      _activeIndex = index;
      print("active index value : $_activeIndex");
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen();
    switch (_activeIndex) {
      case 1:
        activeScreen = Center(child: Text("2nd screen"));
        break;
      case 2:
        activeScreen = Center(child: Text("3rd sreen"));
        break;
      default:
    }

    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        top: true,
        minimum: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: activeScreen,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeActiveIndex,
        currentIndex: _activeIndex,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff251f71), // Set background color here

        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(
              color: Colors.white,
              size: 30.0,
              Icons.home_filled,
            ),
          ),
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(
              color: Colors.white,
              size: 30.0,
              Icons.work,
            ),
          ),
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(
              color: Colors.white,
              size: 30,
              Icons.calendar_month,
            ),
          ),
          // BottomNavigationBarItem(
          //   label: "",
          //   icon: Icon(
          //     size: 30,
          //     Icons.calendar_month,
          //   ),
          // ),
          const BottomNavigationBarItem(
            label: "",
            icon: Icon(
              color: Colors.white,
              size: 30,
              Icons.task_alt_sharp,
            ),
          )
        ],
      ),
    );
  }
}
