import 'package:ec_delivery/features/produtos/presentation/components/crud/photo.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/textformfield.dart';
import 'package:flutter/material.dart';

class ProdutosFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormFieldPEF(
            text: 'Nome',
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 10),
          TextFormFieldPEF(
            text: 'Descrição',
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 10),
          TextFormFieldPEF(
            text: 'Valor',
            textInputType: TextInputType.number,
            textInputAction: TextInputAction.done,
          ),
          SizedBox(height: 20),
          PhotoProdutoWidget(),
        ],
      ),
    );
  }
}
