import 'package:app1/views/registration.dart';
import 'package:app1/views/welcome.dart';
import 'package:flutter/material.dart';
import 'package:social_auth_buttons/res/buttons/google_auth_button.dart';
import 'package:social_auth_buttons/res/shared/auth_button_style.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
          ),
          // color: Colors.white,
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Hello.\nWelcome Back",
                // textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                onChanged: (String value){},
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 16),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "USERNAME",
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 168, 168, 168), fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 168, 168, 168)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 168, 168, 168)),
                  ),
                ),
              ),
              TextField(
                controller: passController,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 16),
                cursorColor: Colors.black,
                obscureText: isObsecure,
                decoration: InputDecoration(
                  // suffixText: "Show",
                  // suffixStyle: TextStyle(
                  //   color: Colors.blue
                  // ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                    icon: Icon(
                        isObsecure ? Icons.visibility : Icons.visibility_off),
                    color: Colors.blue,
                  ),
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 168, 168, 168), fontSize: 16),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 168, 168, 168)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 168, 168, 168)),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WelcomePage(
                              name: emailController.text,
                              password: passController.text,
                            )));
                  },
                  child: Text("Login"),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
