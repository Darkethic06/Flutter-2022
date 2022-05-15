import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
//   const MyCircle({Key? key}) : super(key: key);
  final String mytext;
  MyCircle(this.mytext);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        child: Text(mytext),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/gift.jpg")),
          color: Colors.red, shape: BoxShape.circle),
      ),
    );
  }
}
