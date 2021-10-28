import 'package:flutter/material.dart';

class BookmarkWidget extends StatelessWidget {
  final Color color;

  BookmarkWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
