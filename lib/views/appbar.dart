import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({ Key? key }) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
        title: const Text("First App",
        style: TextStyle(
          color:Colors.black
        ),
        ),
        centerTitle: true,
        leading:Icon(Icons.notifications,
        color: Colors.yellow[500],
        ),
        actions: [
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.headset_sharp,
            color:Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.play_circle, color:Colors.black,),
          )
        ],
        elevation: 0,
    );
  }
}