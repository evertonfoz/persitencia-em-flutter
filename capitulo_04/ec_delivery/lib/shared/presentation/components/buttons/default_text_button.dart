import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final double textFontSize;

  const DefaultTextButton({
    required this.text,
    required this.onPressed,
    this.textColor,
    this.textFontSize: 18,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          fontSize: textFontSize,
          fontWeight: FontWeight.bold,
          color: textColor ?? Theme.of(context).buttonColor,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
