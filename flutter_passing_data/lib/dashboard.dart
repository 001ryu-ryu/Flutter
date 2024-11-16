import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_passing_data/profile_page.dart';

class DashBoard extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),
      body: Center(
        child: Container(
          color: Colors.deepPurple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(nameController.text.toString()),));
              }, child: Text("Go to profile"))
            ],
          ),
        ),
      ),
    );
  }

}