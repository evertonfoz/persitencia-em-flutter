import 'package:flutter/material.dart';

class TextFormFieldECD extends StatelessWidget {
  final Function(String?) onSaved;
  final VoidCallback removeError;
  final VoidCallback addError;
  final String? labelText;
  final String? hintText;
  final bool? hasError;

  const TextFormFieldECD({
    required this.removeError,
    required this.addError,
    required this.onSaved,
    required this.labelText,
    required this.hintText,
    required this.hasError,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (newValue) => onSaved(newValue),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError();
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError();
          return '';
        }
        return null;
      },
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        prefixText: '  ',
        labelText: labelText,
        hintText: hintText,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: this.hasError! ? Colors.red : Colors.black54,
          ),
        ),
      ),
    );
  }
}
