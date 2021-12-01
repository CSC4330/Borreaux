import 'package:flutter/material.dart';
import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/widgets/barcode_widget.dart';
import 'package:borreauxapp/widgets/filter_widget.dart';

class searchBar extends StatefulWidget {
  @override
  _searchBar createState() => _searchBar();
}

class _searchBar extends State<searchBar> {
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.secondaryColor,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 5,
              )
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(52, 90, 107, 0.8),
                  AppColor.secondaryColor
                ])),
      ),
      title: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 40,
                color: Colors.transparent,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: 'Search...',
                      hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: barcodeButton(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
