import 'package:ec_delivery/features/boasvindas/data/datasources/boasvindas_datasource.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/form.dart';
import 'package:flutter/material.dart';

class ProdutosCRUDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Text('Dados do Produto'),
          onLongPress: () async {
            await BoasVindasDataSource.registerDontShowAgain(value: false);

            showDialog<void>(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Preferências resetadas'),
                  content: Text(
                    'As preferências relacionadas à página de boas vindas, foram restauradas.',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 28, left: 8, right: 8),
          child: ProdutosFormWidget(),
        ),
      ),
    );
  }
}
