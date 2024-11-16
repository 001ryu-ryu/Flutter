import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  var nameFromeDash;
  ProfilePage(this.nameFromeDash);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$nameFromeDash"),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text("Back")),
            ],
          ),
        ),
      ),
      
    );
  }

}