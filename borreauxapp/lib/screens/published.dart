import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/storefront.dart';
import 'package:borreauxapp/widgets/confetti_widget.dart';
import 'package:borreauxapp/widgets/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ConfettiSample extends StatelessWidget {
  const ConfettiSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Confetti',
        home: Scaffold(
          backgroundColor: AppColor.primaryColor,
          body:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                confettiWidget(),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => nav_bar(),
                      ),
                    );
                  },
                  child: Text("Go Back!"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          AppColor.secondaryColor),
                      shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: AppColor.secondaryColor)))),
                ),
              ],
            ), 
        ));
  }
}