import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../data/datasources/produtos_sqlite_datasource.dart';
import '../../../data/models/produto_model.dart';
import '../../mobx_stores/produto_store.dart';
import '../../../../../shared/presentation/components/snackbar/snackbar.dart';

// ignore: must_be_immutable
class GravarProdutoButton extends StatelessWidget {
  final VoidCallback onPressed;
  late BuildContext _context;

  GravarProdutoButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    _context = context;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 45,
      ),
      child: Observer(builder: (_) {
        return ElevatedButton.icon(
          icon: Icon(Icons.save),
          label: Text(
            'Gravar',
            style: TextStyle(fontSize: 24),
          ),
          onPressed: !GetIt.I.get<ProdutoStore>().formOK ? null : _onPressed,
        );
      }),
    );
  }

  _onPressed() async {
    var produto = ProdutoModel(
        produtoID: GetIt.I.get<ProdutoStore>().produtoID,
        nome: GetIt.I.get<ProdutoStore>().nome,
        descricao: GetIt.I.get<ProdutoStore>().descricao,
        valor: GetIt.I.get<ProdutoStore>().valor);

    await ProdutosSQLiteDatasource().save(produto);

    showBottomSnackBar(
      context: _context,
      title: 'Sucesso',
      content:
          'Os dados do produto ${produto.nome.toUpperCase()} foram registrados',
    );

    GetIt.I.get<ProdutoStore>().resetForm();
  }
}
