//landingpage

import 'package:borreauxapp/assets/book_listing_struct.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/listings.dart';
import 'package:borreauxapp/widgets/barcode_widget.dart';
import 'package:borreauxapp/widgets/ratingbar_widget.dart';
import 'package:borreauxapp/widgets/storefront_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:borreauxapp/screens/storefront.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  String scanResult;
  bool viewHasBeenPressed = false;
  List<String> selectedFilterCountList = [];

  // Datasets for Each Listing

  List<newListing> listings = [
    newListing(
        "lib/assets/images/fahrenheit451.jpg",
        "joey_b",
        "lib/assets/images/burrow.png",
        "\$3.50",
        "\$10.00",
        "\$30.70",
        false,
        1.0,
        "44",
        "Fahrenheit 451"),
    newListing(
        "lib/assets/images/shakespeare.jpg",
        "mike_123",
        "lib/assets/images/blank_profile.png",
        "\$1.00",
        "\$10.00",
        "\$30.70",
        false,
        3.5,
        "44",
        "Tragedies"),
    newListing(
        "lib/assets/images/scarletLetter.jpg",
        "bob_4",
        "lib/assets/images/blank_profile.png",
        "\$2.30",
        "\$10.00",
        "\$30.70",
        false,
        2.5,
        "44",
        "Scarlet Letter"),
    newListing(
        "lib/assets/images/beowulf.jpeg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$10.00",
        "\$30.70",
        false,
        5.0,
        "44",
        "Beowulf"),
    newListing(
        "lib/assets/images/wutheringHeights.jpg",
        "hello_world",
        "lib/assets/images/blank_profile.png",
        "\$0.50",
        "\$10.00",
        "\$50.70",
        true,
        3.0,
        "44",
        "Wuthering Heights"),
  ];

  List<newListing> listings2 = [
    newListing(
        "lib/assets/images/fahrenheit451.jpg",
        "joey_b",
        "lib/assets/images/burrow.png",
        "\$3.50",
        "\$10.00",
        "\$30.70",
        false,
        1.0,
        "44",
        "Fahrenheit 451"),
    newListing(
        "lib/assets/images/shakespeare.jpg",
        "mike_123",
        "lib/assets/images/blank_profile.png",
        "\$1.00",
        "\$10.00",
        "\$30.70",
        false,
        3.5,
        "44",
        "Tragedies"),
    newListing(
        "lib/assets/images/scarletLetter.jpg",
        "bob_4",
        "lib/assets/images/blank_profile.png",
        "\$2.30",
        "\$10.00",
        "\$30.70",
        false,
        2.5,
        "44",
        "Scarlet Letter"),
    newListing(
        "lib/assets/images/beowulf.jpeg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$10.00",
        "\$30.70",
        false,
        5.0,
        "44",
        "Beowulf"),
    newListing(
        "lib/assets/images/wutheringHeights.jpg",
        "hello_world",
        "lib/assets/images/blank_profile.png",
        "\$0.50",
        "\$10.00",
        "\$50.70",
        true,
        3.0,
        "44",
        "Wuthering Heights"),
  ];

  List<newListing> listings3 = [
    newListing(
        "lib/assets/images/fahrenheit451.jpg",
        "joey_b",
        "lib/assets/images/burrow.png",
        "\$3.50",
        "\$10.00",
        "\$30.70",
        false,
        1.0,
        "44",
        "Fahrenheit 451"),
    newListing(
        "lib/assets/images/shakespeare.jpg",
        "mike_123",
        "lib/assets/images/blank_profile.png",
        "\$1.00",
        "\$10.00",
        "\$30.70",
        false,
        3.5,
        "44",
        "Tragedies"),
    newListing(
        "lib/assets/images/scarletLetter.jpg",
        "bob_4",
        "lib/assets/images/blank_profile.png",
        "\$2.30",
        "\$10.00",
        "\$30.70",
        false,
        2.5,
        "44",
        "Scarlet Letter"),
    newListing(
        "lib/assets/images/beowulf.jpeg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$10.00",
        "\$30.70",
        false,
        5.0,
        "44",
        "Beowulf"),
    newListing(
        "lib/assets/images/wutheringHeights.jpg",
        "hello_world",
        "lib/assets/images/blank_profile.png",
        "\$0.50",
        "\$10.00",
        "\$50.70",
        true,
        3.0,
        "44",
        "Wuthering Heights"),
  ];

  List<String> filterCountList = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Tweleve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen",
    "Twenty"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(115.0),
          child: AppBar(
            backgroundColor: AppColor.secondaryColor,
            elevation: 0,
            title: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 40,
                        color: Colors.transparent,
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: 'Search...',
                              hintStyle: TextStyle(fontSize: 13),
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: barcodeButton(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 5,
                    )
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color.fromRGBO(52, 90, 107, 0.8),
                        AppColor.secondaryColor
                      ])),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 55,
                  ),
                  Container(
                    child: Text(""),
                    decoration: const BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 5,
                          )
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color.fromRGBO(52, 90, 107, 0.8),
                              AppColor.secondaryColor
                            ])),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(color: AppColor.primaryColor),
                    child: Container(
                        height: 80,
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              color: Colors.transparent,
                              child: Text("Popular"),
                              padding: EdgeInsets.fromLTRB(18, 0, 10, 0),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Text("Best Sellers"),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Text("New Releases"),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Text("Suggested"),
                              padding: EdgeInsets.fromLTRB(10, 0, 18, 0),
                            ),

                            // ElevatedButton(
                            //   child: Text("Hello world!"),
                            //   style: ElevatedButton.styleFrom(
                            //       primary: AppColor.primaryColor,
                            //       padding: EdgeInsets.all(20)),
                            //   onPressed: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) =>
                            //             ListingsPage(Colors.green),
                            //       ),
                            //     );
                            //   },
                            // ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 32,
                      color: AppColor.primaryColor.withOpacity(.9),
                      padding: EdgeInsets.fromLTRB(10, 5, 30, 2),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.add_location_alt_outlined,
                                  size: 20),
                            ),
                            TextSpan(
                                text:
                                    "  Select a location to see product availability",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    //     Container(
                    //   padding: EdgeInsets.fromLTRB(10, 5, 30, 2),
                    //   height: 30,
                    //   color: AppColor.primaryColor.withOpacity(.8),
                    //   child: TextButton(
                    //     child: Text("Hello world!"),
                    //   ),
                    // )
                  ),
                ],
              ),
            ),
          )), // APP BAR
      body: SingleChildScrollView(
          child: Container(
        height: 1600,
        width: 1000,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 400,
              width: 1000,
              color: Colors.red,
              child: Expanded(
                child: ElevatedButton(
                  child: Container(
                  child: Image.asset(
                     'lib/assets/images/Red_and_Gold_Classy_and_Elegant_Organic_Stars_Business_Christmas_Banner.png'
                  ),
                    height: 30000,
                    width: 30000,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Storefront(),
                      ),

                    );
                    },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
              child: Text(
                "Recommended",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend Deca',
                ),
              ),
            ),
            _contentGridView(listings),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
              child: Text(
                "Related to: Football",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend Deca',
                ),
              ),
            ),
            _contentGridView(listings2),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
              child: Text(
                "Explore",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lexend Deca',
                ),
              ),
            ),
            _contentGridView(listings3),
          ],
        ),
      )),
    );
  }

  Widget _contentGridView(List<newListing> givenListings) {
    return Container(
        height: 350.0,
        width: 1200.0,
        color: AppColor.primaryColor,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Card(
            child: GridTile(
              child: InkResponse(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 150,
                        height: 225,
                        child:
                            Image.asset(givenListings[index].bookCoverPicPath)),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              Row(children: [
                                Expanded(
                                  flex: 20,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 5, 12, 5),
                                    child: Text(givenListings[index].bookTitle,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        )),
                                  ),
                                )
                              ]),
                              Row(children: [
                                SizedBox(
                                  width: 12,
                                ),
                                RatingBarWidget(givenListings[index].rating,
                                    15.0, givenListings[index].numberOfReviews),
                              ]),
                              SizedBox(
                                height: 5,
                              ),
                              StorefrontRate(
                                  "${givenListings[index].dayRate}/day"),
                              StorefrontRate(
                                  "${givenListings[index].weekRate}/week"),
                              StorefrontRate(
                                  "${givenListings[index].monthRate}/month"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                enableFeedback: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListingsPage(Colors.green),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
