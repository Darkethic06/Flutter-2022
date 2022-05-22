import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        // foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey[300],
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        // elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "LOGIN HERE",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                // maxLength: 8,
                keyboardType: TextInputType.emailAddress,
                // maxLines: 4,
                decoration: InputDecoration(
                    // prefixIcon:Icon(Icons.mail),
                    suffixIcon: Icon(Icons.mail),
                    labelText: "Email",
                    labelStyle: TextStyle(

                        // this is for hexadecimal color code
                        // color: Color(0xFFFFFFFF)
                        color: Color.fromARGB(255, 13, 14, 13)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 182, 247, 3),
                        width: 2,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passController,
                // maxLength: 8,
                obscureText: true,
                // maxLines: 4,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        // this is for hexadecimal color code
                        // color: Color(0xFFFFFFFF)
                        color: Color.fromARGB(255, 13, 14, 13)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 182, 247, 3),
                        width: 2,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            ElevatedButton(onPressed: () {
print(emailController.text);
print(passController.text);
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
