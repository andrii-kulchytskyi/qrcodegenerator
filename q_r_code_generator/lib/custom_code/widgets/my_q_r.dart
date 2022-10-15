// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code

import 'package:qr_flutter/qr_flutter.dart';

class MyQR extends StatefulWidget {
  const MyQR({
    Key? key,
    this.width,
    this.height,
    this.myData,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? myData;

  @override
  _MyQRState createState() => _MyQRState();
}

class _MyQRState extends State<MyQR> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: QrImage(
        data: widget.myData ?? "",
        version: QrVersions.auto,
        size: widget.width,
      ),
    );
  }
}
