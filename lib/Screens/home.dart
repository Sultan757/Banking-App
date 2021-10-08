import 'package:flutter/material.dart';

import 'package:bankingflutter_app/Screens/allUsers.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Banking App",
          textAlign: TextAlign.center,
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image(image: AssetImage('images/login.PNG'),),
          FloatingActionButton.extended(
        label: Text(
        "View All Customers",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AllUsers()));
              },
            ),
          ],
        ),
      )
    );
  }
}
