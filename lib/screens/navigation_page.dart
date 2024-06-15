import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:studio_management_student/components/response_handler.dart';
import 'package:studio_management_student/global_content.dart';
import 'package:studio_management_student/screens/home_screem.dart';

import 'package:http/http.dart' as http;

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
  
  Future<void> getEmployeeDetails(int emplyId) async {
    final url = Uri.http(uri, "/employeeManager/getEmployeeByid/$emplyId");
    try {
      var response = await http.get(url);
      httpresponseHandler(
          context: context,
          response: response,
          onSuccess: () {
            final empDetails = jsonDecode(response.body)['empName'];
            print("emp details: $empDetails");
          });
    } catch (e) {
      print("Error : $e");
    }
    ;
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
      appBar: AppBar(title: Text("Welcome"),),
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
        // elevation: 30,
        // selectedIconTheme: IconThemeData(size: 35, color: Colors.pink),
        unselectedFontSize: 12,
        selectedFontSize: 14,
        showUnselectedLabels: true,
        // fixedColor: Colors.greenAccent,
        unselectedItemColor: Colors.white60,
        // unselectedIconTheme: IconThemeData(color: Colors.white60, size: 20),
        // selectedIconTheme: IconThemeData(color: Colors.black, size: 30),
        onTap: changeActiveIndex,
        currentIndex: _activeIndex,
        // selectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        backgroundColor: const Color(0xff251f71),
        // Set background color here

        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              color: Colors.white,
              size: 30.0,
              Icons.home_filled,
            ),
            backgroundColor: const Color(0xff251f71),
          ),
          const BottomNavigationBarItem(
              label: "Salary",
              icon: Icon(
                color: Colors.white,
                size: 30.0,
                Icons.work,
              ),
              backgroundColor: const Color(0xff251f71)),
          const BottomNavigationBarItem(
              label: "Calender",
              icon: Icon(
                color: Colors.white,
                size: 30,
                Icons.calendar_month,
              ),
              backgroundColor: const Color(0xff251f71)),
          // BottomNavigationBarItem(
          //   label: "",
          //   icon: Icon(
          //     size: 30,
          //     Icons.calendar_month,
          //   ),
          // ),
          const BottomNavigationBarItem(
              label: "Tasks",
              icon: Icon(
                color: Colors.white,
                size: 30,
                Icons.task_alt_sharp,
              ),
              backgroundColor: const Color(0xff251f71))
        ],
      ),
    );
  }
}
