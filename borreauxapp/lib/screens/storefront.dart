import 'package:flutter/material.dart';

class StorefrontWidget extends StatelessWidget {
  final Color color;

  StorefrontWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
