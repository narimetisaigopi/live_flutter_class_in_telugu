import 'package:flutter/material.dart';
import 'package:sample_live/home_screen.dart';
import 'package:sample_live/splash_screen.dart';

class LoginScreen extends StatefulWidget {
  String name;
  LoginScreen({this.name});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                minLines: 1,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    labelText: "Email Address",
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                minLines: 1,
                obscureText: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0)))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen("Sai Gopi")),
                        (route) => false);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        // write your function
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => SplashScreen()));
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      )),
                  GestureDetector(
                      onTap: () {
                        // write your function
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => SplashScreen()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
