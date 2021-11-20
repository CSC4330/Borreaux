//import 'dart:html';

import 'package:borreauxapp/screens/listings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:filter_list/filter_list.dart';

class StorefrontState extends StatefulWidget{
  @override
  StorefrontWidget createState() => StorefrontWidget();
}

class StorefrontWidget extends State<StorefrontState> {
  String? scanResult;
  bool ViewHasBeenPressed = false;
  List<String>? selectedCountList = [];
  List<String> countList = [
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

  //StorefrontWidget(this.color);
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
                      color: Colors.white,
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search for something',
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: IconButton(  
                                icon: ImageIcon(AssetImage("lib/assets/images/barcode_scan.png"), size: 35,),
                                onPressed:scanBarcode,
                              ),
                          ),
                        ),
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(10.0),
                      child: Column(
                        children:[ 
                          Row(
                            children: [
                              TextButton.icon(
                                onPressed: (){
                                  setState(() {
                                    ViewHasBeenPressed = !ViewHasBeenPressed;
                                  });
                                },
                                label: Text(("View")),
                                icon: ViewHasBeenPressed ? Icon(Icons.grid_view) : Icon(Icons.format_list_bulleted),
                                style: TextButton.styleFrom(
                                  primary: Colors.white
                                ), 
                              ),
                              SizedBox(width: 95,),
                              SizedBox(width: 40, height: 40, child: Image.asset("lib/assets/images/logo.png")),
                              SizedBox(width: 95,),
                              TextButton.icon(
                                onPressed: _openFilterWindow,
                                label: Text(("Filter")),
                                icon: Icon(Icons.filter_list),
                                style: TextButton.styleFrom(
                                  primary: Colors.white
                                ), 
                              ),
                            ],
                         ),
                       ]
                      ),
                    ),
                  )), // APP BAR
              body: Container(
                  height: 570.0,
                  child: ViewHasBeenPressed ? _contentGridView() : _contentListView(),  
                ),
            )
    );

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
        itemCount: 20,
        itemBuilder: (content, index) => Card(
          color: Colors.white,
            child: InkResponse(
              onTap: () {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListingWidget(Colors.green),
                  ),
              );
             },
              child: Row(
                children: [
                  Expanded(
                    flex: 33,
                    child: Image.asset('lib/assets/images/book_image_not_found.png',),
                  ),
                  Expanded(
                    flex: 50,
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(children: [Expanded( flex: 20, child: Center(child: Text('Title')),)]),
                        SizedBox(height: 15,),
                        Row(children:[
                          SizedBox(width: 15,),
                          Container(
                            height: 20,
                            width: 20,
                            child: Image.asset("lib/assets/images/blank_profile.png"),
                          ), 
                          SizedBox(width: 15,),
                          Expanded(flex: 20, child: Text('Username'))],
                        ),
                        Row(children:[
                            SizedBox(width: 50,),
                            RatingBar.builder(
                              initialRating: 3,
                              itemCount: 5,
                              itemSize: 15,
                              itemBuilder: (context, index) {
                                switch (index) {
                                    case 0:
                                      return Icon(
                                          Icons.sentiment_very_dissatisfied,
                                          color: Colors.red,
                                      );
                                    case 1:
                                      return Icon(
                                          Icons.sentiment_dissatisfied,
                                          color: Colors.redAccent,
                                      );
                                    case 2:
                                      return Icon(
                                          Icons.sentiment_neutral,
                                          color: Colors.amber,
                                      );
                                    case 3:
                                      return Icon(
                                          Icons.sentiment_satisfied,
                                          color: Colors.lightGreen,
                                      );
                                    case 4:
                                        return Icon(
                                          Icons.sentiment_very_satisfied,
                                          color: Colors.green,
                                        );
                                    default: return Icon(Icons.sentiment_neutral);
                                }
                              },
                              onRatingUpdate: (rating) {print(rating);},
                            )]
                        ),
                        SizedBox(height: 10,),
                        Row(children:[
                          SizedBox(width: 15,),
                          Expanded(flex: 15, child: Text('1 Day: \$1')),
                          ]),
                        Row(children:[
                          SizedBox(width: 15,),
                          Expanded(flex: 15, child: Text('1 Week: \$10')),
                          ]),
                        Row(children:[
                          SizedBox(width: 15,),
                          Expanded(flex: 15, child: Text('1 Month: \$25')),
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

   Widget _contentGridView() {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => Card(
          child: GridTile(
            child: InkResponse(
              child: Center(
                child: Image.asset("lib/assets/images/book_image_not_found.png"),
              ),
              enableFeedback: true,
              onTap: () {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ListingWidget(Colors.green),
                  ),
              );
            },
            ),
          ),
        ),
    );
   }

   void _openFilterWindow() async {
    await FilterListDialog.display<String>(
      context,
      listData: countList,
      selectedListData: selectedCountList,
      height: 480,
      headlineText: "Select Count",
      searchFieldHintText: "Search Here",
      choiceChipLabel: (item) {
        return item;
      },
      validateSelectedItem: (list, val) {
          return list!.contains(val);
      },
      onItemSearch: (list, text) {
          if (list!.any((element) =>
              element.toLowerCase().contains(text.toLowerCase()))) {
            return list
                .where((element) =>
                    element.toLowerCase().contains(text.toLowerCase()))
                .toList();
          }
          else{
            return [];
          }
        },
      onApplyButtonClick: (list) {
        if (list != null) {
          setState(() {
            selectedCountList = List.from(list);
          });
        }
        Navigator.pop(context);
      });
   }

  Future scanBarcode() async{
    String scanResult;
    try{
      scanResult = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", 
        "Cancel", 
        true, 
        ScanMode.BARCODE,
        );
    } on PlatformException {
      scanResult = "Failed to get platform version.";
    }
    if (!mounted) return;

    setState(() => this.scanResult = scanResult);
  }

}
