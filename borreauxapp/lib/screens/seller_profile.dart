import 'package:borreauxapp/assets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/model/user.dart';
import 'package:borreauxapp/utils/user_preferences.dart';
import 'package:borreauxapp/widgets/button_widget.dart';
import 'package:borreauxapp/widgets/numbers_widget.dart';
import 'package:borreauxapp/widgets/profile_widget.dart';

class SellerProfilePage extends StatefulWidget {
  // final Color color;

  // ProfileWidget(this.color);

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     color: color,
  //   );
  // }
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SellerProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.secondaryColor,
        title: Text("Renter Profile"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.transparent,
                    child: Ink.image(
                      image: AssetImage(user.imagePath),
                      fit: BoxFit.cover,
                      width: 128,
                      height: 128,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          // Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Lexend Deca'),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,fontFamily: 'Lexend Deca'),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4, fontFamily: 'Lexend Deca'),
            ),
          ],
        ),
      );
}
