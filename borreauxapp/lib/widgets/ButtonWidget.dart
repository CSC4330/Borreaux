import 'package:flutter/material.dart';

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
//           onPressed: () {
//             // Navigate back to first route when tapped.
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }



// class ButtonWidget extends StatelessWidget {

//   const ButtonWidget({
//     final String text;
//     final VoidCallback onClicked;
//     @required this.text,
//     @required this.onClicked,
//     Key key,
//   }) : super(key: key);

//   Widget build(BuildContext context) {
    
//     final ButtonStyle style =
//       ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           const SizedBox(height: 30),
//           ElevatedButton(
//             style: style,
//             onPressed: () {},
//             child: Text(
//               this.text,
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ButtonWidget extends StatelessWidget {

//   const ButtonWidget({
//     final String text;
//     final VoidCallback onClicked;
//     @required this.text,
//     @required this.onClicked,
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => MaterialButton(
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 20),
//         ),
//         onPressed: onClicked,
//         color: Theme.of(context).primaryColor,
//         textColor: Colors.white,
//         shape: StadiumBorder(),
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//       );
// }