import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Seja bem-vindo(a) ao PeF Delivery',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}
