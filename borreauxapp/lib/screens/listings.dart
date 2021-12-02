import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/messages.dart';
import 'package:borreauxapp/screens/profile.dart';
import 'package:borreauxapp/screens/seller_profile.dart';
import 'package:borreauxapp/widgets/button_widget.dart';
import 'package:borreauxapp/widgets/carousel_widget.dart';
import 'package:borreauxapp/widgets/google_map.dart';
import 'package:borreauxapp/widgets/listing_widgets.dart';
import 'package:borreauxapp/widgets/ratingbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListingsPage extends StatelessWidget {
  final Color color;

  ListingsPage(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.secondaryColor,
      ),
      body: Container(
        color: AppColor.primaryColor,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(children: [
                    Container(
                        child: (CarouselImages()),
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[25]),
                    SizedBox(
                      height: 15,
                    ),
                    ListingPrices("\$2.50", "\$7.50", "\$10.50"),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.grey[25],
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    ListingTitle("Java Concepts: Early Objects"),

                    SizedBox(
                      height: 10,
                    ),
                    ListingDescription(
                        'Posted on November 29, 2021\nCondition:  Used (normal wear)\nISBN: 2381632089'),

                    SizedBox(
                      height: 15,
                    ),

                    Divider(
                      color: Colors.grey[25],
                      thickness: 1,
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    ListingSubHeader("Rental Info"),

                    SizedBox(
                      height: 10,
                    ),

                    ListingDescription('Available rental dates: August 14th to November 20th'),

                    SizedBox(
                      height: 30,
                    ),

                    Divider(
                      color: Colors.grey[25],
                      thickness: 1,
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    // RENTER
                    Row(
                      children: [
                        // user avatar
                        SizedBox(width: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkResponse(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SellerProfilePage(),
                                  ),
                                );
                              },
                              child: ListingProfilePic(
                                  "lib/assets/images/burrow.png"),
                            )
                          ],
                        ),
                        SizedBox(width: 30),
                        // username text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkResponse(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            SellerProfilePage(),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: ListingUsername("Joe Burrow"),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [RatingBarWidget(5.0, 25.0, "44")]),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 30),
                            Icon(Icons.keyboard_arrow_right_rounded, size: 40),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => MessagesPage(),
                    //       ),
                    //     );
                    //   },
                    //   child: Text("Message"),
                    //   style: ButtonStyle(
                    //       backgroundColor: MaterialStateProperty.all(
                    //           AppColor.secondaryColor),
                    //       shape:
                    //           MaterialStateProperty.all<RoundedRectangleBorder>(
                    //               RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(18.0),
                    //                   side: BorderSide(
                    //                       color: AppColor.secondaryColor)))),
                    // ),
                    Divider(
                      color: Colors.grey[25],
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    MapScreen(),

                    SizedBox(
                      height: 30,
                    ),

                    // Divider(
                    //   color: AppColor.secondaryColor,
                    //   thickness: 3,
                    //   indent: 30,
                    //   endIndent: 30,
                    // ),

                    SizedBox(
                      height: 30,
                    ),
                    // Row(
                    //   children: [
                    //     SizedBox(width: 30,),
                    //     Text(
                    //       'Seller Info',
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.bold,
                    //         fontSize: 25,
                    //         )
                    //     ),
                    //   ]
                    // ),
                  ]),
                ),
              ]),
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MessagesPage(),
                  ),
                );
              },
              child: Text(
                "Message",
                style: TextStyle(color: AppColor.secondaryColor, fontFamily: 'Lexend Deca'),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(175, 25),
                primary: AppColor.primaryColor,
                onPrimary: AppColor.secondaryColor,
                shadowColor: Colors.transparent,
                side: BorderSide(color: AppColor.secondaryColor),
              ),
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
              child: Text("Rent"),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(175, 25),
                primary: AppColor.secondaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
