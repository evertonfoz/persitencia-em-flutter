import 'package:flutter/material.dart';

class TextFormFieldPEF extends StatefulWidget {
  final String text;
  final TextInputType textInputType;
  final TextInputAction textInputAction;

  const TextFormFieldPEF({
    required this.text,
    this.textInputType: TextInputType.text,
    this.textInputAction: TextInputAction.done,
  });

  @override
  _TextFormFieldPEFState createState() => _TextFormFieldPEFState();
}

class _TextFormFieldPEFState extends State<TextFormFieldPEF> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            // fillColor: kTextFieldFillColor.shade100,
            // filled: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          ),
        ),
      ],
    );
  }
}
