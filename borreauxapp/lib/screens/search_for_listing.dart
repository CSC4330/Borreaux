import 'package:borreauxapp/assets/book_listing_struct.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/listings.dart';
import 'package:borreauxapp/widgets/ratingbar_widget.dart';
import 'package:borreauxapp/widgets/searchbar_widget.dart';
import 'package:borreauxapp/widgets/storefront_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class searchExistListing extends StatefulWidget {
  @override
  _searchExistListing createState() => _searchExistListing();
}

class _searchExistListing extends State<searchExistListing> {
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

  // Builds the Storefront
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0), // here the desired height
            child: searchBar()), // APP BAR
      ));
}
