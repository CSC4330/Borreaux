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
import 'package:borreauxapp/assets/book_listing_struct.dart';
import 'package:borreauxapp/screens/storefront.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class AddItemPageGoogle extends StatefulWidget {
  @override
  _AddItemPageGoogleState createState() => _AddItemPageGoogleState();
}

class _AddItemPageGoogleState extends State<AddItemPageGoogle> {
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
              height: 60,
            ),
            Container(
              //margin: const EdgeInsets.all(30.0),
              //padding: const EdgeInsets.all(100.0),
              height: 300,
              width: 300,
              child: Image.asset(
                  "lib/assets/images/41uvuuFt06S._SX379_BO1,204,203,200_.jpg"),
            ),
            const SizedBox(
              height: 40,
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
              text: "Software Engineering At Google",
              onChanged: (name) {},
            ),
            const SizedBox(
              height: 30,
            ),
            TextFieldWidget(
              label: 'ISBN-13',
              text: "978-1492082798",
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Description',
              text:
                  "Today, software engineers need to know not only how to program effectively but also how to develop proper engineering practices to make their codebase sustainable and healthy. This book emphasizes this difference between programming and software engineering.\nHow can software engineers manage a living codebase that evolves and responds to changing requirements and demands over the length of its life? Based on their experience at Google, software engineers Titus Winters and Hyrum Wright, along with technical writer Tom Manshreck, present a candid and insightful look at how some of the world’s leading practitioners construct and maintain software. This book covers Google’s unique engineering culture, processes, and tools and how these aspects contribute to the effectiveness of an engineering organization.",
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
            const SizedBox(height: 30),
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
          listings.add(
            newListing(
                "lib/assets/images/41uvuuFt06S._SX379_BO1,204,203,200_.jpg",
                "Corin Canepa",
                "lib/assets/images/13707656_10208704555125113_2536130105804357909_n.jpeg",
                "\$0.45",
                "\$27.00",
                "\$420.70",
                false,
                5.0,
                "473",
                "Software Engineering at Google"),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PublishedBook(),
            ),
          );
        },
      );
}

// implement database to save this info
