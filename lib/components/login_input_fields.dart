import 'package:flutter/material.dart';

class LoginInputFields extends StatelessWidget {
  final String hintText;
  final Color fillColor;
  LoginInputFields(this.hintText, this.fillColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: TextField(
          // maxLength: 50,
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide.none),
            // hintText: hintText,
            label: Text(
              hintText,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ));
  }
}
