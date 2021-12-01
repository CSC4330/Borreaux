import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/profile_corin/profile_corin.dart';
import 'package:borreauxapp/screens/profile_corin/profile_corin.dart';
import 'package:borreauxapp/screens/storefront.dart';
import 'package:borreauxapp/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:borreauxapp/screens/login_page.dart';
import 'package:borreauxapp/screens/messages.dart';
import 'package:borreauxapp/screens/bookmark.dart';
import 'package:borreauxapp/screens/profile.dart';
import 'package:borreauxapp/screens/add_item.dart';

class nav_bar extends StatefulWidget {
  @override
  _nav_bar_state createState() => _nav_bar_state();
}

class _nav_bar_state extends State<nav_bar> {
  int _currentIndex = 0;
  final List _children = [
    Storefront(),
    BookmarkPage(),
    AddItemPage(),
    MessagesPage(),
    CorinProfileWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //title: Text("Temp Bar to go back to Login"),       // REMOVE APP BAR LINES TO FIX FORMAT
      //),
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: '',
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            )
          ],
        ),
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
