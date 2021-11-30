import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/model/user.dart';
import 'package:borreauxapp/utils/user_preferences.dart';
import 'package:borreauxapp/widgets/button_widget.dart';
import 'package:borreauxapp/widgets/profile_widget.dart';
import 'package:borreauxapp/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  // we get the same user fields from the User profile page
  User user = UserPreferences.myUser;

  var appBar;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: AppColor.secondaryColor,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
            const SizedBox(height: 96),
            buildSaveButton(),
          ],
        ),
      );
}

// implement database to save this info
Widget buildSaveButton() => ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColor.secondaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: AppColor.secondaryColor)
    )
  )
      ),
      child: Text('Save'),
      onPressed: () {},
    );
