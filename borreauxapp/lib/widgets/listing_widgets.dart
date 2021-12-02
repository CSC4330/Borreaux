import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListingProfilePic extends StatelessWidget {
  final String ProfilePicPath;

  ListingProfilePic(String this.ProfilePicPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        ProfilePicPath,
        fit: BoxFit.contain,
      ),
    );
  }
}

class ListingUsername extends StatelessWidget {
  final String Username;

  ListingUsername(String this.Username);

  @override
  Widget build(BuildContext context) {
    return Text(Username,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: 'Lexend Deca',
        ));
  }
}

class ListingSubHeader extends StatelessWidget {
  final String mySubHeader;

  ListingSubHeader(String this.mySubHeader);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 30,
      ),
      Text(mySubHeader,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )),
    ]);
  }
}

class ListingPrices extends StatelessWidget {
  final String dailyPrice;
  final String weeklyPrice;
  final String monthlyPrice;

  ListingPrices(this.dailyPrice, this.weeklyPrice, this.monthlyPrice);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Daily",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                )),
            Text(dailyPrice,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ))
          ],
        ),
        SizedBox(width: 15),
        Container(
          height: 24,
          child: VerticalDivider(thickness: 1),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Weekly",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                )),
            Text(weeklyPrice,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ))
          ],
        ),
        SizedBox(width: 15),
        Container(
          height: 24,
          child: VerticalDivider(thickness: 1),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Monthly",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                )),
            Text(monthlyPrice,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ))
          ],
        ),
        SizedBox(width: 30),
      ],
    );
  }
}

class ListingDescription extends StatelessWidget {
  final String myDescription;

  ListingDescription(String this.myDescription);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: 30,
      ),
      Flexible(
          child: Text(myDescription,
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black, height: 1.5))),
    ]);
  }
}

class ListingTitle extends StatelessWidget {
  final String myTitle;

  ListingTitle(String this.myTitle);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        width: 30,
      ),
      Flexible(
        child: Text(myTitle,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
      ),
    ]);
  }
}
