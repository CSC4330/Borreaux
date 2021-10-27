import 'package:flutter/material.dart';
import 'package:borreauxapp/screens/login_page.dart';

class Storefront extends StatefulWidget {
  @override
  _StorefrontState createState() => _StorefrontState();
}

class _StorefrontState extends State<Storefront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
            ),
          ),
          Image.asset('assets/images/4330logo2.png'),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(MyApp.title),
//           centerTitle: true,
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               HeaderWidget(title: 'Page 2'),
//               ButtonWidget(
//                 text: 'Push: Page 3',
//                 onClicked: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ThirdPage()),
//                 ),
//               ),
//               const SizedBox(height: 24),
//               ButtonWidget(
//                 text: 'Pop: Page 1',
//                 onClicked: () => Navigator.pop(context),
//               ),
//             ],
//           ),
//         ),
//       );
// }