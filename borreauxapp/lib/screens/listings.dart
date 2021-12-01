import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/messages.dart';
import 'package:borreauxapp/screens/profile.dart';
import 'package:borreauxapp/screens/seller_profile.dart';
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
                        color: Colors.grey),
                    SizedBox(
                      height: 15,
                    ),
                    ListingPrices("\$2.50", "\$7.50", "\$10.50"),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    ListingTitle("Beowulf"),

                    SizedBox(
                      height: 15,
                    ),
                    ListingDescription(
                        'Posted on November 29, 2021\n\nCondition:  Used(normal wear)\n\nISBN: 2381632089'),

                    SizedBox(
                      height: 30,
                    ),

                    Divider(
                      color: AppColor.secondaryColor,
                      thickness: 3,
                      indent: 30,
                      endIndent: 30,
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    ListingSubHeader("Rental Info"),

                    SizedBox(
                      height: 10,
                    ),

                    ListingDescription('Rental Info Goes here'),

                    SizedBox(
                      height: 30,
                    ),

                    Divider(
                      color: AppColor.secondaryColor,
                      thickness: 3,
                      indent: 30,
                      endIndent: 30,
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    ListingSubHeader("Location Details"),

                    SizedBox(
                      height: 30,
                    ),

                    ListingDescription('Rental Info Goes here'),

                    SizedBox(
                      height: 30,
                    ),

                    MapScreen(),

                    SizedBox(
                      height: 30,
                    ),

                    Divider(
                      color: AppColor.secondaryColor,
                      thickness: 3,
                      indent: 30,
                      endIndent: 30,
                    ),

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

                    Row(
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
                              "lib/assets/images/blank_profile.png"),
                        )
                      ],
                    ),

                    Row(
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
                          child: ListingUsername("Username"),
                        ),
                      ],
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [RatingBarWidget(3.0, 25.0, "44")]),

                    SizedBox(
                      height: 30,
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MessagesPage(),
                          ),
                        );
                      },
                      child: Text("Message"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              AppColor.secondaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: AppColor.secondaryColor)))),
                    ),
                  ]),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
