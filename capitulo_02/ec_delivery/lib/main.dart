import 'package:ec_delivery/core/presentation/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ECDeliveryApp());
}

class ECDeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EC Delivery',
      theme: theme(),
      home: Scaffold(
        body: Center(
          child: Text('EC Delivery App'),
        ),
      ),
    );
  }
}
