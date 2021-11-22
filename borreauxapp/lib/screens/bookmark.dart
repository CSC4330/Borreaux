import 'package:flutter/material.dart';
import 'package:borreauxapp/widgets/google_map.dart';

class BookmarkWidget extends StatelessWidget {
  final Color color;

  BookmarkWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: color,
          ),
          // MapScreen(),
        ],
      ),
    );
  }
}
