import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/messages.dart';
import 'package:borreauxapp/screens/profile.dart';
import 'package:borreauxapp/screens/seller_profile.dart';
import 'package:borreauxapp/widgets/Listing_widgets.dart';
import 'package:borreauxapp/widgets/carousel_widget.dart';
import 'package:borreauxapp/widgets/google_map.dart';
import 'package:borreauxapp/widgets/ratingbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListingWidget extends StatelessWidget {
  final Color color;

  ListingWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Listing Page"),
      //   centerTitle: true,
      // ),
      body: Container(
        color: AppColor.secondaryColor,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xff41c5ff),
              shadowColor: AppColor.secondaryColor,
              flexibleSpace: FlexibleSpaceBar(
                //title: CarouselImages(),
                background: CarouselImages(),
              ),
              pinned: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.305,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 1100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        ListingTitle("Listing Title"),

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

                        ListingSubHeader("Description"),

                        SizedBox(
                          height: 10,
                        ),

                        ListingDescription('Description Goes here'),

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

                        ListingSubHeader("Location"),

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
                            children: [RatingBarWidget(3.0, 25.0)]),

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
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
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
