import 'package:flutter/material.dart';

class ListTileComponent extends StatelessWidget {
  const ListTileComponent(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.bgColor,
      this.fontColor});
  final IconData icon;
  final String title;
  final String subTitle;
  final Color? bgColor;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    print("title :  $title");
    print("bg color  :  $bgColor");

    return ListTile(
        // contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        trailing: Icon(Icons.arrow_forward_ios_sharp,
            color: bgColor != null ? Colors.white : Color(0xff251f71)),
        leading: Icon(icon,
            color: bgColor != null ? Colors.white : Color(0xff251f71),
            size: 30),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 25,
              color: bgColor != null ? Colors.white : Color(0xff251f71)),
        ),
        tileColor: bgColor != "" ? bgColor : Colors.transparent,
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xff251f71)),
            borderRadius: BorderRadius.circular(10)),
        style: ListTileStyle.drawer,
        subtitle: Text(
          subTitle,
        ),
        subtitleTextStyle: TextStyle(
            height: 0,
            color: bgColor != null ? Colors.white : Color(0xff251f71)),
        dense: true,
        visualDensity: VisualDensity(vertical: -3));
  }
}
