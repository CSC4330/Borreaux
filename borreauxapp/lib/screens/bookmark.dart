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
        false,
        5.0,
        "44",
        "Beowulf"),
  ];
  int numberOfSavedListings = 1;

  // Datasets for Each Listing

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
        itemBuilder: (content, index) => Card(
          color: Colors.white,
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
                StorefrontImage(savedListings[index].bookCoverPicPath),
                Expanded(
                  flex: 50,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      StorefrontTitle(savedListings[index].bookTitle),
                      SizedBox(
                        height: 10,
                      ),
                      StorefrontProfile(savedListings[index].profilePicPath,
                          savedListings[index].username),
                      Row(children: [
                        SizedBox(
                          width: 50,
                        ),
                        RatingBarWidget(savedListings[index].rating, 15.0,
                            savedListings[index].numberOfReviews),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      StorefrontRate("Daily: ${savedListings[index].dayRate}"),
                      StorefrontRate(
                          "Weekly: ${savedListings[index].weekRate}"),
                      StorefrontRate(
                          "Monthly: ${savedListings[index].monthRate}"),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(Icons.bookmark),
                            onPressed: () {
                              setState(() {
                                savedListings[index].bookmarked =
                                    !savedListings[index].bookmarked;
                              });
                            },
                            color: (savedListings[index].bookmarked)
                                ? Colors.red
                                : const Color(0xff9A9A9A)),
                        SizedBox(
                          width: 10,
                        ),
                      ]),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
