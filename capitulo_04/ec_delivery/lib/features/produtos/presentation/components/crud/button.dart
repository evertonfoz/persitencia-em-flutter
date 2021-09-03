import 'package:ec_delivery/features/produtos/data/datasources/produtos_sqlite_datasource.dart';
import 'package:ec_delivery/features/produtos/domain/entities/produto.dart';
import 'package:ec_delivery/shared/presentation/components/snackbar/snackbar.dart';
import 'package:flutter/material.dart';

class GravarProdutoButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GravarProdutoButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 45,
      ),
      child: ElevatedButton.icon(
        icon: Icon(Icons.save),
        label: Text(
          'Gravar',
          style: TextStyle(fontSize: 24),
        ),
        onPressed: () async {
          await ProdutosSQLiteDatasource().create(
            Produto(
                nome: 'Pizza de Calabresa',
                descricao: 'Mussarela, calabresa, azeitona e ceboa',
                valor: 50),
          );
          showBottomSnackBar(
              title: 'Sucesso',
              content: 'Produto registrado',
              context: context);
        },
      ),
    );
  }
}
