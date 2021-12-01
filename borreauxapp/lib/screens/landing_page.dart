import 'package:borreauxapp/assets/book_listing_struct.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/bookmark.dart';
import 'package:borreauxapp/screens/listings.dart';
import 'package:borreauxapp/widgets/barcode_widget.dart';
import 'package:borreauxapp/widgets/ratingbar_widget.dart';
import 'package:borreauxapp/widgets/storefront_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:filter_list/filter_list.dart';
import 'package:borreauxapp/widgets/filter_widget.dart';

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
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90.0),
            child: AppBar(
              backgroundColor: AppColor.secondaryColor,
              elevation: 0,
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
              ),
              title: Center(
                child: Row(
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
                    filterButton(),
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
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
        body: Container(
          height: 1300.0,
          child: viewHasBeenPressed ? _contentGridView() : _contentListView(),
        ),
      ));

  Widget _contentListView() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.white70,
          ),
        ),
        color: AppColor.primaryColor,
      ),
      height: 175.0,
      child:
          // Container(
          //   height: 250.0,
          //   padding: EdgeInsets.all(10),
          // ),
          ListView.builder(
        itemExtent: 175.0,
        itemCount: 5,
        itemBuilder: (content, index) => Container(
          height: 1000,
          padding: EdgeInsets.all(5),
          child: Card(
            color: Colors.white,
            shadowColor: Colors.transparent,
            // margin: EdgeInsets.all(0),
            child: InkResponse(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListingsPage(Colors.green),
                  ),
                );
              },
              child: Row(
                children: [
                  StorefrontImage(listings[index].bookCoverPicPath),
                  Expanded(
                    flex: 55,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        StorefrontTitle(listings[index].bookTitle),
                        SizedBox(
                          height: 10,
                        ),
                        StorefrontProfile(listings[index].profilePicPath,
                            listings[index].username),
                        SizedBox(
                          height: 3,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 12,
                          ),
                          RatingBarWidget(listings[index].rating, 15.0,
                              listings[index].numberOfReviews),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        StorefrontRate("${listings[index].dayRate}/day"),
                        StorefrontRate("${listings[index].weekRate}/week"),
                        StorefrontRate("${listings[index].monthRate}/month"),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  icon: Icon(Icons.bookmark),
                                  onPressed: () {
                                    setState(() {
                                      listings[index].bookmarked =
                                          !listings[index].bookmarked;
                                    });
                                  },
                                  color: (listings[index].bookmarked)
                                      ? Colors.red
                                      : const Color(0xff9A9A9A)),
                              SizedBox(
                                width: 10,
                              ),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _contentGridView() {
    return Container(
        color: AppColor.secondaryColor,
        child: GridView.builder(
          itemCount: 5,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => Card(
            child: GridTile(
              child: InkResponse(
                child: Center(
                  child: Image.asset(listings[index].bookCoverPicPath),
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
