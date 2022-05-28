import 'package:flutter/material.dart';
import 'package:gradient_container/gradient_container.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Here"),
      ),
      body: Center(
          child: SafeArea(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello to register page"),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Go Back to Login Page"),
          ),
          GradientContainer(
            height: 150,
            width: 150,
            colors: [Colors.red, Color.fromARGB(255, 234, 211, 218)],
          ),
        ],
      ))),
    );
  }
}
