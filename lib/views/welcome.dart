import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
 final String name;
 final String password;
  WelcomePage({ required this.name, required this.password});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  // String? name;
  // String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(widget.name),
              Text(widget.password),
            ],
          ),
        ),
      ),
    );
  }
}