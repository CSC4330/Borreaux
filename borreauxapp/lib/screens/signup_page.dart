import 'package:borreauxapp/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/widgets/textbox_widget.dart';
import 'package:borreauxapp/widgets/nav_bar.dart';

class buildSignupPage extends StatefulWidget {
  final String hintText;

  const buildSignupPage({
    @required this.hintText = '',
  });

  @override
  _buildSignupPage createState() => _buildSignupPage();
}

class _buildSignupPage extends State<buildSignupPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                color: AppColor.primaryColor,
              ),
              buildTextBox(
                hintTextV: 'First Name',
              ),
              buildTextBox(
                hintTextV: 'Last Name',
              ),
              buildTextBox(
                hintTextV: 'E-mail',
                inputType: TextInputType.emailAddress,
              ),
              buildTextBox(
                hintTextV: 'Password',
                inputType: TextInputType.text,
                obscureTextBool: true,
              ),
              ElevatedButton(
                child: const Text('Create Account'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => nav_bar()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// return Scaffold(
//       body: Stack(
//         children: <Widget>[
//           Stack(
//             children: <Widget>[
//               Container(
//                 height: double.infinity,
//                 //in case entire screen is not visible on a different device
//                 child: SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 40.0,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.all(30),
//                         child: Image.asset(
//                           'lib/assets/images/4330logo3.png',
//                           width: 130.0,
//                           height: 130.0,
//                         ),
//                       ),
//                       const Text(
//                         'Sign In',
//                         style: TextStyle(
//                           color: AppColor.secondaryColor,
//                           fontFamily: 'OpenSans',
//                           fontSize: 30.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 30.0),
//                       buildEmailTextbox(),
//                       buildPasswordTextbox(),
//                       const SizedBox(height: 20.0),
//                       buildLoginButton(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           buildSignupButton(),
//                           buildForgotPasswordBtn(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );