import 'package:flutter/material.dart';
import 'package:studio_management_student/screens/navigation_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _activeIndex = 0;
  void changeActiveIndex(int index) {
    print("index value : $index");
    // setState(() {
    //   _activeIndex = index;
    // });
  }
  // Widget activeScreen = 
  @override
  Widget build(BuildContext context) {
    switch (_activeIndex) {
      case 0:
        HomePage();
        break;
      case 1:
        Center(child: Text("2nd page"));
        break;
      default:
    }
    return BottomNavigationBar(
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
    );
  }
}
