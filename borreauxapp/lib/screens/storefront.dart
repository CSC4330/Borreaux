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

class Storefront extends StatefulWidget {
  @override
  _StorefrontState createState() => _StorefrontState();
}

class _StorefrontState extends State<Storefront> {
  String scanResult;
  bool viewHasBeenPressed = false;
  List<String> selectedFilterCountList = [];



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

//   List<String> bookCoverPicsList = [
//     "lib/assets/images/book_image_not_found.png",
//     "lib/assets/images/book_image_not_found.png",
//     "lib/assets/images/book_image_not_found.png",
//     "lib/assets/images/book_image_not_found.png",
//     "lib/assets/images/book_image_not_found.png",
//   ];

//   List<String> usernameList = [
//     "joey_b",
//     "mike_123",
//     "bob_4",
//     "alice_2",
//     "hello_world"
//   ];

//   List<String> profilePicsList = [
//       "lib/assets/images/blank_profile.png",
//       "lib/assets/images/blank_profile.png",
//       "lib/assets/images/blank_profile.png",
//       "lib/assets/images/blank_profile.png",
//       "lib/assets/images/blank_profile.png",
//   ];

//   List<String> dayRateList = [
//     "\$3.50",
//     "\$1.00",
//     "\$2.30",
//     "\$1.10",
//     "\$0.50",
//   ];

//   List<String> weekRateList = [
//     "\$10.00",
//     "\$8.50",
//     "\$6.20",
//     "\$9.99",
//     "\$3.45",
//   ];

//   List<String> monthRateList = [
//     "\$30.70",
//     "\$99.99",
//     "\$40.39",
//     "\$30.50",
//     "\$15.50",
//   ];

//   List<bool> bookmarkList = [
//    false,
//    false,
//    false,
//    false,
//    false,
//  ];

//   List<double> ratingsList = [
//     1.0,
//     5.0,
//     2.5,
//     4.0,
//     3.5,
//   ];

//   List<String> bookTitleList = [
//     "One",
//     "Two",
//     "Three",
//     "Four",
//     "Five",
//   ];

  // Builds the Storefront
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
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
                    // IconButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       viewHasBeenPressed = !viewHasBeenPressed;
                    //     });
                    //   },
                    //   icon: viewHasBeenPressed
                    //       ? Icon(Icons.grid_view)
                    //       : Icon(Icons.format_list_bulleted),
                    // ),
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
              // bottom: PreferredSize(
              //   preferredSize: Size.fromHeight(10.0),
              //   child: Column(children: [
              //     Row(
              //       children: [
              //         // TextButton.icon(
              //         //   onPressed: () {
              //         //     setState(() {
              //         //       viewHasBeenPressed = !viewHasBeenPressed;
              //         //     });
              //         //   },
              //         //   label: Text(("View")),
              //         //   icon: viewHasBeenPressed
              //         //       ? Icon(Icons.grid_view)
              //         //       : Icon(Icons.format_list_bulleted),
              //         //   style: TextButton.styleFrom(primary: Colors.white),
              //         // ),
              //         // filterButton(),
              //       ],
              //     ),
              //   ]),
              // ),
            )), // APP BAR
        body: Container(
          height: 1000.0,
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
      child: ListView.builder(
        itemExtent: 175.0,
        itemCount: listings.length
        ,
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
