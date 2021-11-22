import 'package:borreauxapp/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/widgets/nav_bar.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/utils/authentication.dart';
import 'package:borreauxapp/widgets/google_sign_button.dart';

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
        const Text('Email', style: TextStyle(color: AppColor.secondaryColor)),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: AppColor.primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: AppColor.secondaryColor,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: AppColor.secondaryColor,
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
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: const Text('Password',
              style: TextStyle(
                color: AppColor.secondaryColor,
              )),
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: AppColor.primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: const TextField(
            obscureText: true,
            style: TextStyle(
              color: AppColor.secondaryColor,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: AppColor.secondaryColor,
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
        child: const Text('Forgot Password?'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nav_bar()),
          );
        },
      ),
    );
  }

  Widget buildSignupButton() {
    return Container(
      alignment: Alignment.centerLeft,
      child: TextButton(
        child: const Text('Sign Up'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => buildSignupPage()),
          );
        },
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
                  color: AppColor.primaryColor,
                ),
              ),
              Container(
                height: double.infinity,
                //in case entire screen is not visible on a different device
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(30),
                        child: Image.asset(
                          'lib/assets/images/4330logo3.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      buildEmailTextbox(),
                      buildPasswordTextbox(),
                      const SizedBox(height: 20.0),
                      buildLoginButton(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildSignupButton(),
                          buildForgotPasswordBtn(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 80,
                child: FutureBuilder(
                  future: Authentication.initializeFirebase(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error initializing Firebase');
                    } else if (snapshot.connectionState == ConnectionState.done) {
                      return GoogleSignInButton();
                    }
                    return CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColor.primaryColor,
                      ),
                    );
                  },
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