import 'package:ec_delivery/features/produtos/presentation/components/crud/textformfield.dart';
import 'package:flutter/material.dart';

class ProdutosFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormFieldPEF(text: 'Nome'),
          SizedBox(height: 10),
          TextFormFieldPEF(text: 'Descrição'),
          SizedBox(height: 10),
          TextFormFieldPEF(text: 'Valor'),
        ],
      ),
    );
  }
}
