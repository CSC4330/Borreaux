import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/storefront.dart';
import 'package:borreauxapp/widgets/confetti_widget.dart';
import 'package:borreauxapp/widgets/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PublishedBook extends StatelessWidget {
  const PublishedBook({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Confetti',
        home: Scaffold(
          backgroundColor: AppColor.primaryColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              confettiWidget(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Text(
                  'Your Book Has Been Listed!',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    color: AppColor.secondaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => nav_bar(),
                      ),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.secondaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side:
                                  BorderSide(color: AppColor.secondaryColor)))),
                ),
              ),
            ],
          ),
        ));
  }
}
