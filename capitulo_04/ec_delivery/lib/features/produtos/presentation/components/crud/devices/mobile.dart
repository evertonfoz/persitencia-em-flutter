import 'package:ec_delivery/features/produtos/presentation/components/crud/button.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/photo.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/textfields.dart';
import 'package:flutter/material.dart';

class MobileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 4, child: FormTextFields()),
        Expanded(flex: 4, child: PhotoProdutoWidget()),
        SizedBox(height: 10),
        Expanded(
            flex: 1,
            child: GravarProdutoButton(
              onPressed: () {},
            )),
        // await ProdutosSQLiteDatasource().create(
        //     Produto(
        //         nome: 'Pizza de Calabresa',
        //         descricao: 'Mussarela, calabresa, azeitona e ceboa',
        //         valor: 50),
        //   );
        //   showBottomSnackBar(
        //       title: 'Sucesso',
        //       content: 'Produto registrado',
        //       context: context);
      ],
    );
  }
}
