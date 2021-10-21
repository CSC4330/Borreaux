import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              ),
            ),
          Image.asset('assets/images/4330logo2.png'),
          ],
        ),
      );
  }
}
/*
  padding: EdgeInsets.all(20.0),
  margin: EdgeInsets.all(20.0),
  */
