import 'package:borreauxapp/assets/book_listing_struct.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/listings.dart';
import 'package:borreauxapp/widgets/ratingbar_widget.dart';
import 'package:borreauxapp/widgets/searchbar_widget.dart';
import 'package:borreauxapp/widgets/storefront_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  List<newListing> savedListings = [
    newListing(
        "lib/assets/images/beowulf.jpeg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$10.00",
        "\$30.70",
        true,
        5.0,
        "44",
        "Beowulf"),
  ];
  int numberOfSavedListings = 1;

  // Datasets for Each Listing
  List<newListing> listings = [
    newListing(
        "lib/assets/images/beowulf.jpeg",
        "alice_2",
        "lib/assets/images/blank_profile.png",
        "\$1.10",
        "\$10.00",
        "\$30.70",
        true,
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

  // Builds the Storefront
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0), // here the desired height
            child: searchBar()), // APP BAR
        body: Container(
          height: 1000.0,
          child: _contentListView(),
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
        itemCount: numberOfSavedListings,
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
}
