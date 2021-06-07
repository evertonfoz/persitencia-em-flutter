import 'package:ec_delivery/core/presentation/form_error.dart';
import 'package:flutter/material.dart';

class ProdutosFormWidget extends StatefulWidget {
  final formKey;

  const ProdutosFormWidget({required, this.formKey});

  @override
  _ProdutosFormWidgetState createState() => _ProdutosFormWidgetState(
        formKey: formKey,
      );
}

class _ProdutosFormWidgetState extends State<ProdutosFormWidget> {
  final formKey;

  _ProdutosFormWidgetState({required this.formKey});

  final List<String> errors = [];
  String _nome = '';
  String _descricao = '';
  String _valor = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
              onPressed: () {},
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
          decoration: InputDecoration(labelText: 'Nome'),
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
