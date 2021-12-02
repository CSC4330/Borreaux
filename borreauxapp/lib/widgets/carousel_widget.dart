import 'dart:math';
import 'package:borreauxapp/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImages extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  final imageList = [
    Image.asset("lib/assets/images/Screen_Shot_2021-11-28_at_3.07.32_PM.png"),
    Image.asset("lib/assets/images/20211201_215438.jpg"),
    // Image.asset("lib/assets/images/book_image_not_found.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 1000,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
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
    );
  }
}
