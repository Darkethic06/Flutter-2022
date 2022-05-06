import 'package:flutter/material.dart';

class AppList extends StatefulWidget {
  const AppList({ Key? key }) : super(key: key);

  @override
  State<AppList> createState() => _AppListState();
}

class _AppListState extends State<AppList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
        height: 250,
      
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 200,
                color: Colors.blue,
                child: Text("Text1"),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 200,
                color: Colors.blue,
                child: Text("Text2"),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 200,
                color: Colors.blue,
                child: Text("Text3"),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 200,
                color: Colors.blue,
                child: Text("Text4"),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 200,
                color: Colors.blue,
                child: Text("Text5"),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                height: 200,
                color: Colors.blue,
                child: Text("Text6"),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}