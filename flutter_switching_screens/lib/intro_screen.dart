import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switching_screens/main.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body: Column(
        children: [
          Text("Welcome"),
          SizedBox(
            height: 8,
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage(title: "Home");
            },));
          }, child: Text("Teleport"))
        ],
      ),
    );
  }

}