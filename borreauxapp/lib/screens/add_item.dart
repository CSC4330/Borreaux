import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/model/user.dart';
import 'package:borreauxapp/screens/published.dart';
import 'package:borreauxapp/utils/user_preferences.dart';
import 'package:borreauxapp/widgets/button_widget.dart';
import 'package:borreauxapp/widgets/carousel_widget.dart';
import 'package:borreauxapp/widgets/profile_widget.dart';
import 'package:borreauxapp/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/widgets/google_map.dart';
import 'package:image_picker/image_picker.dart';
import 'package:borreauxapp/widgets/datepicker_widget.dart';

class AddItemPage extends StatefulWidget {
  @override
  _AddItemPageState createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
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
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(100.0),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.secondaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text(
                "Image(s)",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MessagesPage(),
                    //   ),
                    // );
                  },
                  child: Text("Take Photo(s)"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.secondaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side:
                                  BorderSide(color: AppColor.secondaryColor)))),
                ),
                const SizedBox(
                  width: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MessagesPage(),
                    //   ),
                    // );
                  },
                  child: Text("Camera Roll"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.secondaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side:
                                  BorderSide(color: AppColor.secondaryColor)))),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextFieldWidget(
              label: 'Book Title',
              text: "",
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Description',
              text: "",
              maxLines: 5,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Rental Info',
              text: "",
              maxLines: 5,
              onChanged: (about) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Location Details',
              text: "",
              maxLines: 5,
              onChanged: (about) {},
            ),
            Center(
              child: DateRangePickerWidget(),
            ),
            const SizedBox(height: 24),
            MapScreen(),
            const SizedBox(height: 30),
            buildPublishButton(),
          ],
        ),
      );

  Widget buildPublishButton() => ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColor.secondaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: AppColor.secondaryColor)))),
        child: Text('Publish'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ConfettiSample(),
            ),
          );
        },
      );
}

// implement database to save this info
