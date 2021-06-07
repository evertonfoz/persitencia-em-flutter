import 'package:ec_delivery/core/presentation/form_error.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProdutosFormWidget extends StatefulWidget {
  @override
  _ProdutosFormWidgetState createState() => _ProdutosFormWidgetState();
}

class _ProdutosFormWidgetState extends State<ProdutosFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? _nome = '';
  String? _descricao = '';
  String? _valor = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTextFormFields(),
          _buildPictureContainer(),
          _buildButtonsContainer(),
        ],
      ),
    );
  }

  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  _buildButtonsContainer() {
    return Container(
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 200),
            child: ElevatedButton.icon(
              icon: Icon(Icons.save),
              label: Text('Gravar'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('OK');
                } else {
                  print('ERROR');
                }
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  _buildPictureContainer() {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          FlutterLogo(size: 200),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.photo_camera,
              size: 48,
            ),
          ),
        ],
      ),
    );
  }

  _buildTextFormFields() {
    return Column(
      children: [
        SizedBox(height: 20),
        TextFormField(
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
            // icon: Icon(Icons.ac_unit),
            // prefix: Icon(Icons.baby_changing_station),
            // prefixIcon: Icon(Icons.cabin),
            prefixText: '  ',
            labelText: 'Nome',
            hintText: 'Informe o nome',
            // contentPadding: EdgeInsets.only(left: 10),
            // isDense: true,
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Descrição'),
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(labelText: 'Valor'),
        ),
        SizedBox(height: 10),
        FormError(errors: errors),
      ],
    );
  }
}
