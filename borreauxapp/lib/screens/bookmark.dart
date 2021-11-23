import 'package:borreauxapp/assets/book_listing_struct.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/listings.dart';
import 'package:borreauxapp/widgets/ratingbar_widget.dart';
import 'package:borreauxapp/widgets/storefront_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BookmarkState extends StatefulWidget {
  @override
  BookmarkWidget createState() => BookmarkWidget();
}

class BookmarkWidget extends State<BookmarkState> {
  
  List<newListing> savedListings = [

    newListing("lib/assets/images/book_image_not_found.png", 
               "hello_world", 
               "lib/assets/images/blank_profile.png",
               "\$0.50",
               "\$10.00",
               "\$50.70",
               true,
               3.0,
               "Book: The Book"),


  ];
  int numberOfSavedListings = 1;

  // Datasets for Each Listing

  // Builds the Storefront
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0), // here the desired height
            child: AppBar(
              backgroundColor: const Color(0xff41c5ff),
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: AppColor.secondaryColor,
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
                    ),
                  ),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10.0),
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Saved Listings",
                        style: TextStyle(
                          color: Colors.white, 
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )),
                    ],
                  ),
                  SizedBox(height: 10,),
                ]),
              ),
            )), // APP BAR
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
        color: const Color(0xff41c5ff),
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
                  builder: (context) => ListingWidget(Colors.green),
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
                      StorefrontProfile(
                         savedListings[index].profilePicPath, savedListings[index].username),
                      Row(children: [
                        SizedBox(
                          width: 50,
                        ),
                        RatingBarWidget(savedListings[index].rating, 15.0),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      StorefrontRate("Daily: ${savedListings[index].dayRate}"),
                      StorefrontRate("Weekly: ${savedListings[index].weekRate}"),
                      StorefrontRate("Monthly: ${savedListings[index].monthRate}"),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(Icons.bookmark),
                            onPressed: () {
                              setState(()
                              {
                                savedListings[index].bookmarked = !savedListings[index].bookmarked;
                              });                    
                            },
                            color:(savedListings[index].bookmarked) ? Colors.red : const Color(0xff9A9A9A)),
                          SizedBox(width: 10,),
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
