import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => LoginScreen(
                    name: "Sai Gopi",
                  )),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
          child: Text(
        "Welcome to my App",
        style: TextStyle(color: Colors.white, fontSize: 32),
      )),
    );
  }
}
