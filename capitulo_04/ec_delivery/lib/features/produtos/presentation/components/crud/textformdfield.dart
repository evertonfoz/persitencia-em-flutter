import 'package:flutter/material.dart';

class TextFormFieldPEF extends StatefulWidget {
  final String text;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Function(String?)? onChanged;

  const TextFormFieldPEF({
    required this.text,
    this.textInputType: TextInputType.text,
    this.textInputAction: TextInputAction.done,
    this.onChanged,
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
        TextFormField(
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          ),
          onChanged: (value) {
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
        ),
      ],
    );
  }
}
