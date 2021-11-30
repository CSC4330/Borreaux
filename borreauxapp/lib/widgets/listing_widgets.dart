import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListingProfilePic extends StatelessWidget {
  final String ProfilePicPath;

  ListingProfilePic(String this.ProfilePicPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Image.asset(ProfilePicPath),
    );
  }
}

class ListingUsername extends StatelessWidget {
  final String Username;

  ListingUsername(String this.Username);

  @override
  Widget build(BuildContext context) {
    return Text('Username',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text("Daily",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                )),
            Text(dailyPrice,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))
          ],
        ),
        Column(
          children: [
            Text("Weekly",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                )),
            Text(weeklyPrice,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))
          ],
        ),
        Column(
          children: [
            Text("Monthly",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                )),
            Text(monthlyPrice,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))
          ],
        )
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
      Text(myDescription, style: TextStyle(color: Colors.black)),
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
      Text(myTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    ]);
  }
}
