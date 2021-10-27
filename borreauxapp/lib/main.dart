import 'package:flutter/material.dart';
import 'package:borreauxapp/screens/login_page.dart';
import 'package:borreauxapp/screens/storefront.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigator 1.0';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.red),
        home: LoginPage(),
      );
}
