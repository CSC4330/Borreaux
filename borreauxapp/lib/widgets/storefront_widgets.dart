import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class StorefrontProfile extends StatelessWidget {
  final String ProfilePicPath;
  final String Username;

  StorefrontProfile(String this.ProfilePicPath, String this.Username);

 @override
  Widget build(BuildContext context){
    return Row(children:[
      SizedBox(width: 15,),
      Container(
        height: 20,
        width: 20,
        child: Image.asset(ProfilePicPath),
      ), 
      SizedBox(width: 15,),
      Expanded(flex: 20, child: Text(Username))]);
  }
}

class StorefrontImage extends StatelessWidget {
  final String imagePath;

  StorefrontImage(String this.imagePath);

 @override
  Widget build(BuildContext context){
    return Expanded(
      flex: 33,
      child: Image.asset(imagePath),
    );
  }
  
}

class StorefrontRate extends StatelessWidget {
  final String myRate;

  StorefrontRate(String this.myRate);

 @override
  Widget build(BuildContext context){
    return Row(children:[
      SizedBox(width: 15,),
      Expanded(flex: 15, child: Text(myRate)),
      ]);
  }
}


class StorefrontTitle extends StatelessWidget {
  final String myTitle;

  StorefrontTitle(String this.myTitle);

 @override
  Widget build(BuildContext context){
    return Row(children: [Expanded( flex: 20, child: Center(child: Text(myTitle,
      style: TextStyle(
        color: Colors.black, 
        fontWeight: FontWeight.bold,
        fontSize: 20,
        )
    )),)]);
  }
}