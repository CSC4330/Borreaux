import 'package:borreauxapp/assets/colors.dart';
import 'package:flutter/material.dart';

class buildTextBox extends StatelessWidget {
  String hintTextV;
  TextInputType inputType;
  bool obscureTextBool;

  buildTextBox(
      {@required this.hintTextV = '',
      this.inputType = TextInputType.text,
      this.obscureTextBool = false});

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
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
            child: Material(
              child: TextField(
                obscureText: obscureTextBool,
                keyboardType: inputType, //************* */
                style: const TextStyle(
                  color: AppColor.secondaryColor,
                  fontFamily: 'Lexend Deca',
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14.0),
                  hintText: hintTextV, //****** */
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
