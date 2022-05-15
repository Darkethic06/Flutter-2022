import 'package:flutter/material.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  State<MyGrid> createState() => _MyGridState();
}
final List circles = [
  "Circle 1",
  "Circle 2",
  "Circle 3",
  "Circle 4"
  "Circle 5"
];
class _MyGridState extends State<MyGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      
      //     child: GridView.count(
      //   crossAxisCount: 2,
      //   physics: BouncingScrollPhysics( 
      //   ),
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Container(
      //         height: 150,
      //         decoration: BoxDecoration(color: Colors.yellowAccent),
      //       ),
      //     )
      //   ],
      // )),
    child: GridView.builder(
gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(  
                  crossAxisCount: 4,  
                  crossAxisSpacing: 4.0,  
                  mainAxisSpacing: 4.0  
              ),   
              itemBuilder: (context, index) {
                    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(color: Colors.yellowAccent),
            ),
          );
                  },
                )),

    );
    
  }
}
