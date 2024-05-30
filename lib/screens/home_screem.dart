import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:studio_management_student/components/expand_component.dart';
import 'package:studio_management_student/components/list_tile_component.dart';

import 'package:http/http.dart' as http;
import 'package:studio_management_student/global_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> _asignedTasks = [];

  Future<void> getAsignedTasks() async {
    print("I v been called");
    final queryParameters = {
      "empId": "1",
    };
    // var url = Uri.http('http://localhost:5000/employeeManager', '/getEmployees');
    var url =
        Uri.http(uri, '/eventManager/employee-asignedTasks', queryParameters);
    var response = await http.get(url);

    print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    if (response.statusCode == 200) {
      List<dynamic> assignedTasks = jsonDecode(response.body)['assignedTasks'];
      setState(() {
        _asignedTasks = assignedTasks;
      });

      for (var task1 in assignedTasks) {
        var task = task1['task'];
        var taskName = task['taskName'];
        print('Task Name: $taskName');
      }
      print(jsonDecode(response.body)['assignedTasks']);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("called");
    getAsignedTasks();
  }

  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    return Column(
      children: [
        ListTileComponent(
          icon: Icons.money_rounded,
          title: "Salary",
          subTitle: "",
          bgColor: Color(0xff251f71),
        ),
        ExpandableTile(_asignedTasks, title: "Tasks"),
        // Container(
        //   color: Color.fromARGB(215, 14, 19, 106),
        //   child: ExpansionTile(
        //     backgroundColor: Colors.transparent,
        //     title: new Text("Numbers"),
        //     children: <Widget>[
        //       new Text("Number: 1"),
        //       new Text("Number: 2"),
        //       new Text("Number: 3"),
        //       new Text("Number: 4"),
        //       new Text("Number: 5")
        //     ],
        //   ),
        // ),
        SizedBox(
          height: 20,
        ),
        // ListTileComponent()
      ],
    );
  }
}
