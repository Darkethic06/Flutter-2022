
import 'package:app1/utils/ownColor.dart';
import 'package:app1/views/gridpage.dart';
import 'package:app1/views/homepage.dart';
import 'package:app1/views/list.dart';
import 'package:app1/views/loginPage.dart';
import 'package:app1/views/timeline.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFirst App',
      theme: ThemeData(
        primarySwatch: white,
        // primaryColor: Colors.white
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


