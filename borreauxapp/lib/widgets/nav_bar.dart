import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/storefront.dart';
import 'package:borreauxapp/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/screens/login_page.dart';
import 'package:borreauxapp/screens/messages.dart';
import 'package:borreauxapp/screens/bookmark.dart';
import 'package:borreauxapp/screens/profile.dart';
import 'package:borreauxapp/screens/add.dart';

class nav_bar extends StatefulWidget {
  @override
  _nav_bar_state createState() => _nav_bar_state();
}

class _nav_bar_state extends State<nav_bar> {
  int _currentIndex = 0;
  final List _children = [
    StorefrontState(),
    BookmarkWidget(Colors.deepOrange),
    AddWidget(Colors.green),
    MessagesWidget(Colors.blue),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temp Bar to go back to Login"),       // REMOVE APP BAR LINES TO FIX FORMAT
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Storefront',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            label: 'Add Item',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            label: 'Messages',
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// class SecondRoute extends StatelessWidget {
//   const SecondRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Go back'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }
