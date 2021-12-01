import 'package:borreauxapp/screens/listings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:filter_list/filter_list.dart';

class RatingBarWidget extends StatelessWidget {
  final double rating;
  final double myItemSize;
  final String numberOfReviews;

  RatingBarWidget(
      double this.rating, double this.myItemSize, String this.numberOfReviews);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IgnorePointer(
            child: RatingBar.builder(
          initialRating: rating,
          minRating: 1,
          itemSize: myItemSize,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        )),
        Text(
          "(" + numberOfReviews + ")",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
