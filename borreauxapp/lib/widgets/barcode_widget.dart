import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:borreauxapp/screens/listings.dart';
import 'package:borreauxapp/screens/login_page.dart';

class barcodeButton extends StatefulWidget {
  @override
  _barcodeButton createState() => _barcodeButton();
}

class _barcodeButton extends State<barcodeButton> {
  String scanResult;
  Widget build(BuildContext context) {
    return IconButton(
      icon: ImageIcon(
        AssetImage("lib/assets/images/barcode_scan.png"),
        size: 35,
      ),
      onPressed: scanBarcode,
    );
  }

  Future scanBarcode() async {
    String scanResult;
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        "Cancel",
        true,
        ScanMode.BARCODE,
      );
    } on PlatformException {
      scanResult = "Failed to get platform version.";
    }
    if (!mounted) return;

    setState(() {
      print(scanResult);
      if (scanResult != null)
        if(scanResult == "2901118431121")
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListingsPage(Colors.green),
            ),
          );
      if(scanResult == "2900135210641")
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
    });
  }
}
