import 'package:ec_delivery/features/produtos/presentation/componentes/crud/form.dart';
import 'package:flutter/material.dart';

class ProdutosCRUDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dados	do	Produto')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 28, left: 8, right: 8),
          child: ProdutosFormWidget(),
        ),
      ),
    );
  }
}
