import 'package:flutter/material.dart';
import 'package:studio_management_student/components/list_tile_component.dart';

class ExpandableTile extends StatefulWidget {
  const ExpandableTile(this.items, {super.key, required this.title});
  final String title;
  final List<dynamic> items;

  @override
  State<ExpandableTile> createState() => _ExpandableTileState();
}

class _ExpandableTileState extends State<ExpandableTile> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),

      // padding: const EdgeInsets.symmetric(
      //     horizontal: 12.0, vertical: 8.0),
      // color: constColor(0xff251f71),
      child: ExpansionTile(
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
          tilePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          onExpansionChanged: (value) {
            setState(() {
              _isExpanded = value;
            });
            print("_isExpanded value: ");
            print(_isExpanded);
          },
          collapsedBackgroundColor:
              // !_isExpanded ? const Color(0xff251f71) : Colors.amber,
              const Color(0xff251f71),
          // tilePadding: EdgeInsets.all(0),
          backgroundColor: Colors.transparent,
          // _isExpanded ? Colors.transparent : const Color(0xff251f71),
          // tilePadding: EdgeInsetsGeometry,
          trailing: Icon(
            Icons.keyboard_arrow_right_sharp,
            color: _isExpanded ? Colors.black : Colors.white,
            size: 30,
          ),
          title: Row(
            children: [
              Icon(
                Icons.payment,
                color: _isExpanded ? Colors.black : Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  color: _isExpanded ? Colors.black : Colors.white,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          // ),
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: widget.items.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTileComponent(
                  title: widget.items[index]['task']['taskName'].toString(),
                  icon: Icons.add_task_outlined,
                  subTitle: "ggggggggggg",
                ),
              ),
            ),
          ]
          // widget.items
          //     .map(
          //       (item) => Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ListTileComponent(
          //           title: item['task']['taskName'].toString(),
          //           icon: Icons.add_task_outlined,
          //           subTitle: "ggggggggggg",
          //         ),
          //       ),
          //     )
          //     .toList()
          // Container(
          //       margin: const EdgeInsets.symmetric(vertical: 10),
          //       alignment: Alignment.centerLeft,
          //       //  color: Color.fromARGB(215, 14, 19, 106),
          //       decoration: BoxDecoration(
          //           color: Color.fromARGB(214, 249, 249, 249),
          //           border: Border.all(
          //             color: Color.fromARGB(214, 0, 0, 0),
          //           ),
          //           borderRadius:
          //               const BorderRadius.all(Radius.circular(10))),
          //       padding: const EdgeInsets.symmetric(
          //           horizontal: 12.0, vertical: 8.0),
          //       height: 60,
          //       width: double.infinity,
          //       child: Column(
          //         children: [
          //           Row(
          //             children: [
          //               Icon(
          //                 Icons.payment,
          //                 color: Colors.black,
          //                 size: 25,
          //               ),
          //               SizedBox(
          //                 width: 20,
          //               ),
          //               Text(
          //                 item['task']['taskName'].toString(),
          //                 style:
          //                     TextStyle(color: Colors.black, fontSize: 20),
          //               ),
          //             ],
          //           ),
          //         ],
          //       ),
          //     ))
          // .toList()
          //  <Widget>[
          // Container(
          //   margin: const EdgeInsets.symmetric(vertical: 10),
          //   alignment: Alignment.centerLeft,
          //   //  color: Color.fromARGB(215, 14, 19, 106),
          //   decoration: BoxDecoration(
          //       color: Color.fromARGB(214, 249, 249, 249),
          //       border: Border.all(
          //         color: Color.fromARGB(214, 0, 0, 0),
          //       ),
          //       borderRadius: const BorderRadius.all(Radius.circular(10))),
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          //   height: 70,
          //   width: double.infinity,
          //   child: const Row(
          //     children: [
          //       Icon(
          //         Icons.payment,
          //         color: Colors.black,
          //         size: 30,
          //       ),
          //       SizedBox(
          //         width: 20,
          //       ),
          //       Text(
          //         "Attendance",
          //         style: TextStyle(color: Colors.black, fontSize: 25),
          //       ),
          //     ],
          //   ),
          // ),

          // ],
          ),
    );
  }
}
