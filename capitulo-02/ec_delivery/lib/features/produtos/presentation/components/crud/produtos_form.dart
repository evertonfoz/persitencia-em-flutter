import 'package:ec_delivery/core/presentation/components/textformfield.dart';
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
        TextFormFieldECD(
          onSaved: (newValue) => _nome = newValue,
          removeError: () => removeError(error: kNomeNullError),
          addError: () => addError(error: kNomeNullError),
          labelText: 'Nome',
          hintText: 'Informe o nome',
          hasError: errors.contains(kNomeNullError),
        ),
        SizedBox(height: 10),
        TextFormFieldECD(
          onSaved: (newValue) => _descricao = newValue,
          removeError: () => removeError(error: kDescricaoNullError),
          addError: () => addError(error: kDescricaoNullError),
          labelText: 'Descrição',
          hintText: 'Informe a descrição',
          hasError: errors.contains(kDescricaoNullError),
        ),
        SizedBox(height: 10),
        TextFormFieldECD(
          onSaved: (newValue) => _valor = newValue,
          removeError: () => removeError(error: kValorNullError),
          addError: () => addError(error: kValorNullError),
          labelText: 'Valor',
          hintText: 'Informe o valor',
          hasError: errors.contains(kValorNullError),
        ),
        SizedBox(height: 10),
        SizedBox(height: 60, child: FormError(errors: errors)),
      ],
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
}
