import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  final Function(bool) onChanged;
  final String text;

  const CheckBoxWidget({
    required this.onChanged,
    required this.text,
  });

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _checked,
          onChanged: (value) {
            setState(() {
              _checked = !_checked;
            });

            widget.onChanged(_checked);
          },
        ),
        Text(widget.text),
      ],
    );
  }
}
