import 'package:flutter/material.dart';

class MessagesWidget extends StatelessWidget {
  final Color color;

  MessagesWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
