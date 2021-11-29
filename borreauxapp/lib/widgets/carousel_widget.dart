import 'dart:math';
import 'package:borreauxapp/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImages extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  final imageList = [
    Image.asset("lib/assets/images/beowulf.jpeg"),
    Image.asset("lib/assets/images/beowulf2.jpeg"),
    // Image.asset("lib/assets/images/book_image_not_found.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("HI HELLO"),
        // ),
        body: Center(
          child: Container(
            height: 1000,
            color: AppColor.primaryColor,
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: false,
              ),
              items: imageList,
              //   .map((e) => ClipRRect(
              //     borderRadius: BorderRadius.circular(8),
              //     child: Stack(
              //       fit: StackFit.expand,
              //       children: <Widget>[
              //         Image.network(e,
              //           width: 1050,
              //           height: 350,
              //           fit: BoxFit.cover,)
              //       ],
              //     ),
              //   ),).toList()
            ),
          ),
        ),
      ),
    );
  }
}
