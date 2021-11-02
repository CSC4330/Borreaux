import 'package:flutter/material.dart';
import 'package:borreauxapp/widgets/ButtonWidget.dart';
import 'package:borreauxapp/widgets/nav_bar.dart';
import 'package:borreauxapp/assets/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget buildLoginButton() {
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => nav_bar()),
            );
          },
        ),
      ],
    );
    //Image.asset('assets/images/4330logo3.png'),
  }

  Widget buildEmailTextbox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Email', style: TextStyle(color: Colors.white)),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email',
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPasswordTextbox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Password',
            style: TextStyle(
              color: Colors.white,
            )),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your Password',
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        child: const Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget buildSignupButton() {
    return Container(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () => print('Sign up Button Pressed'),
        child: const Text(
          'Sign up',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              //The background color/design
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                ),
              ),
              Container(
                height: double.infinity,
                //in case entire screen is not visible on a different device
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      const SizedBox(
                        height: 30.0,
                      ),
                      buildEmailTextbox(),
                      buildPasswordTextbox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildSignupButton(),
                          buildForgotPasswordBtn(),
                        ],
                      ),
                      buildLoginButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class FirstRoute extends StatelessWidget {
//   const FirstRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Open route'),c
//           onPressed: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
/*
  padding: EdgeInsets.all(20.0),
  margin: EdgeInsets.all(20.0),
  ButtonWidget(
                text: 'Push: Page 2',
                onClicked: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                ),
  */

//Image.asset('assets/images/4330logo3.png'),