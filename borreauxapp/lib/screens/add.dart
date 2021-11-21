import 'package:flutter/material.dart';

class AddWidget extends StatelessWidget {
  final Color color;

  AddWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
