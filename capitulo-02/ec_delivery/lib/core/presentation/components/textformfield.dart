import 'package:flutter/material.dart';

class TextFormFieldECD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          onSaved: (newValue) => _nome = newValue,
          onChanged: (value) {
            if (value.isNotEmpty) {
              removeError(error: kNomeNullError);
            }
            return null;
          },
          validator: (value) {
            if (value!.isEmpty) {
              addError(error: kNomeNullError);
              return '';
            }
            return null;
          },
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            prefixText: '  ',
            labelText: 'Nome',
            hintText: 'Informe o nome',
          ),
        ),;
  }
}