import 'package:borreauxapp/screens/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/widgets/nav_bar.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget buildLoginButton() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, //moves log in box to left of its column

      children: <Widget>[
        const SizedBox(
            width: 200, // works
            height: 1),
        ElevatedButton(
          child: const Text('Sign In'),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14)))),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColor.secondaryColor),
            fixedSize: MaterialStateProperty.all(const Size(100, 0)),
          ),
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
        // const Text('Email', style: TextStyle(color: AppColor.secondaryColor)),
        // const SizedBox(height: 10.0),

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
              hintText: 'Email',
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
          // child: const Text('Password',
          //     style: TextStyle(
          //       color: AppColor.secondaryColor,
          //     )),
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
              hintText: 'Password',
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.topLeft,
      child: TextButton(
        child: const Text('Forgot Password?'),
        style: TextButton.styleFrom(
          primary: AppColor.secondaryColor,
        ),
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
        child: const Text(
          'Sign Up',
          style: TextStyle(color: AppColor.secondaryColor),
        ),
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
      resizeToAvoidBottomInset: false, // fluter 2.x
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
                        padding: EdgeInsets.all(60),
                        child: Image.asset(
                          'lib/assets/images/4330logo3.png',
                          width: 130.0,
                          height: 130.0,
                        ),
                      ),
                      const SizedBox(height: 1.0),
                      buildEmailTextbox(),
                      buildPasswordTextbox(),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          buildLoginButton(),
                          // buildForgotPasswordBtn(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, //Center Row contents horizontally,
                        crossAxisAlignment: CrossAxisAlignment
                            .center, //Center Row contents vertically,

                        children: <Widget>[
                          Container(
                            child: Text("Don't have an account?"),
                          ),

                          buildSignupButton(),
                          const SizedBox(
                              height:
                                  260), //spaces the sign up button from the top, the higher the value the lower it goes
                        ],
                      )
                    ],
                  ),
                ),
              ),
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
