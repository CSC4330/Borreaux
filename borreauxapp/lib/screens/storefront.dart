import 'package:flutter/material.dart';
import 'package:borreauxapp/screens/login_page.dart';

class Storefront extends StatefulWidget {
  @override
  _StorefrontState createState() => _StorefrontState();
}

class _StorefrontState extends State<Storefront> {
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

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}