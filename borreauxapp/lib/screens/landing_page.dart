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
        "lib/assets/images/20211201_233857.jpg",
        "joey_b",
        "lib/assets/images/burrow.png",
        "\$3.50",
        "\$0.99",
        "\$30.70",
        false,
        4.5,
        "43",
        "MATLAB"),
    newListing(
        "lib/assets/images/shakespeare.jpg",
        "mike_123",
        "lib/assets/images/blank_profile.png",
        "\$1.00",
        "\$3.00",
        "\$30.70",
        false,
        3.5,
        "20",
        "Tragedies"),
    newListing(
        "lib/assets/images/20211201_233902.jpg",
        "bob_4",
        "lib/assets/images/blank_profile.png",
        "\$1.30",
        "\$3.33",
        "\$30.70",
        false,
        5.0,
        "243",
        "Calculus With..."),
    newListing(
        "lib/assets/images/beowulf.jpeg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$6.77",
        "\$30.70",
        false,
        3.5,
        "7",
        "Beowulf"),
    newListing(
        "lib/assets/images/20211201_233909.jpg",
        "hello_world",
        "lib/assets/images/blank_profile.png",
        "\$0.50",
        "\$2.00",
        "\$50.70",
        true,
        3.0,
        "463",
        "Major Proble..."),
  ];

  List<newListing> listings2 = [
    newListing(
        "lib/assets/images/20211201_233336.jpg",
        "joey_b",
        "lib/assets/images/burrow.png",
        "\$3.50",
        "\$4.00",
        "\$30.70",
        false,
        4.5,
        "170",
        "Cracking the..."),
    newListing(
        "lib/assets/images/20211201_233407.jpg",
        "mike_123",
        "lib/assets/images/blank_profile.png",
        "\$1.00",
        "\$2.50",
        "\$30.70",
        false,
        3.7,
        "32",
        "Linux Book"),
    newListing(
        "lib/assets/images/20211201_233553.jpg",
        "bob_4",
        "lib/assets/images/blank_profile.png",
        "\$2.30",
        "\$5.50",
        "\$30.70",
        false,
        5.0,
        "845",
        "Ansi Program..."),
    newListing(
        "lib/assets/images/20211201_233436.jpg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$3.25",
        "\$30.70",
        false,
        4.0,
        "75",
        "Java Servlet..."),
    newListing(
        "lib/assets/images/20211201_233629.jpg",
        "hello_world",
        "lib/assets/images/blank_profile.png",
        "\$0.50",
        "\$4.50",
        "\$50.70",
        true,
        3.8,
        "2",
        "Apache TomCat"),
  ];

  List<newListing> listings3 = [
    newListing(
        "lib/assets/images/fahrenheit451.jpg",
        "joey_b",
        "lib/assets/images/burrow.png",
        "\$0.50",
        "\$1.25",
        "\$30.70",
        false,
        3.5,
        "639",
        "Fahrenheit 451"),
    newListing(
        "lib/assets/images/20211201_233914.jpg",
        "mike_123",
        "lib/assets/images/blank_profile.png",
        "\$1.00",
        "\$3.20",
        "\$30.70",
        false,
        3.7,
        "699",
        "Applied Stat..."),
    newListing(
        "lib/assets/images/scarletLetter.jpg",
        "bob_4",
        "lib/assets/images/blank_profile.png",
        "\$2.30",
        "\$4.43",
        "\$30.70",
        false,
        5.0,
        "28",
        "Scarlet Letter"),
    newListing(
        "lib/assets/images/20211202_002532.jpg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$2.00",
        "\$30.70",
        false,
        4.3,
        "364",
        "Engineering S..."),
    newListing(
        "lib/assets/images/wutheringHeights.jpg",
        "hello_world",
        "lib/assets/images/blank_profile.png",
        "\$0.50",
        "\$5.70",
        "\$50.70",
        true,
        3.0,
        "759",
        "Wuthering Hei..."),
  ];

  List<String> filterCountList = [
    "Romance",
    "Action",
    "Coding",
    "Thriller",
    "Horror",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(115.0),
          child: AppBar(
            automaticallyImplyLeading: false,
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
                              child: Text("Newly Added"),
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Text("Suggested"),
                              padding: EdgeInsets.fromLTRB(10, 0, 18, 0),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Text("Near Me"),
                              padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
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
                child: Container(
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/nash.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: new TextButton(
                      // padding: EdgeInsets.all(0.0),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Storefront(),
                          ),
                        );
                      },
                      child: null),
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
                "Related to: Coding",
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
                          height: 75,
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
                                height: 10,
                              ),
                              // StorefrontRate(
                              //     "${givenListings[index].dayRate}/day"),
                              StorefrontRate(
                                  "${givenListings[index].weekRate}/week"),
                              // StorefrontRate(
                              //     "${givenListings[index].monthRate}/month"),
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
