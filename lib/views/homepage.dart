import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

Color C1 = const Color.fromARGB(255, 131, 131, 131);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.grey,
                            width: 2,
                            style: BorderStyle.solid),
                        boxShadow: [
                          BoxShadow(
                            color: C1,
                            blurRadius: 5.0,
                            spreadRadius: 1,
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                          ),
                          BoxShadow(
                            color: C1,
                            blurRadius: 5.0,
                            spreadRadius: 1,
                            offset: Offset(
                              -2.0,
                              -2.0,
                            ),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Device Name:"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Device Id:"),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Samsung"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("456123"),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.grey,
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Who Will be Notified?",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ));
  }
}
