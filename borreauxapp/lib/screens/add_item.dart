import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/model/user.dart';
import 'package:borreauxapp/screens/published.dart';
import 'package:borreauxapp/screens/search_for_listing.dart';
import 'package:borreauxapp/utils/user_preferences.dart';
import 'package:borreauxapp/widgets/button_widget.dart';
import 'package:borreauxapp/widgets/carousel_widget.dart';
import 'package:borreauxapp/widgets/profile_widget.dart';
import 'package:borreauxapp/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/widgets/google_map.dart';
import 'package:image_picker/image_picker.dart';
import 'package:borreauxapp/widgets/datepicker_widget.dart';
import 'package:borreauxapp/assets/book_listing_struct.dart';
import 'package:borreauxapp/screens/storefront.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AddItemPage extends StatefulWidget {
  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  String scanResult;

  @override
  Widget build(BuildContext context) => Scaffold(
        // appBar: AppBar(
        //   leading: BackButton(),
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        //   foregroundColor: AppColor.secondaryColor,
        // ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 70,
            ),
            ConstrainedBox(
                constraints: BoxConstraints.tightFor(width: 300, height: 70),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => searchExistListing(),
                      ),
                    );
                  },
                  child: Text(
                    "List An Item",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lexend Deca',
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.secondaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              side:
                                  BorderSide(color: AppColor.secondaryColor)))),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("0",
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    Text("Active",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ))
                  ],
                ),
                SizedBox(width: 15),
                Container(
                  height: 24,
                  child: VerticalDivider(thickness: 2),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("0",
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    Text("Sold",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ))
                  ],
                ),
                SizedBox(width: 15),
                Container(
                  height: 24,
                  child: VerticalDivider(thickness: 2),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("0",
                        style: TextStyle(
                          color: AppColor.secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    Text("Unsold",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ))
                  ],
                ),
                SizedBox(width: 30),
              ],
            ),
            SizedBox(height: 210),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$0.00",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 70,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Lexend Deca',
                    )),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("90 Days Total",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Lexend Deca',
                    )),
              ],
            )
          ],
        ),
      );
}

// implement database to save this info
