import 'package:app1/component/circle.dart';
import 'package:flutter/material.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  State<TimeLine> createState() => _TimeLineState();
}
final List circles = [
  "Circle 1",
  "Circle 2",
  "Circle 3",
  "Circle 4"
  "Circle 5"
];
class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
                
          children: [
            Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: circles.length,
                  itemBuilder: (context, index) {
                    return MyCircle(circles[index]);
                  },
                )),

            // ///////////////////////////////////////////////////////

            Expanded(
                child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    // minVerticalPadding: 11,
                    title: Text("Tile"),

                    tileColor: Colors.yellowAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text("Tile"),
                    tileColor: Colors.yellowAccent,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text("Tile"),
                    tileColor: Colors.yellowAccent,
                  ),
                ),
                ListTile(
                  title: Text("Tile"),
                  tileColor: Colors.yellowAccent,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.yellowAccent,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
