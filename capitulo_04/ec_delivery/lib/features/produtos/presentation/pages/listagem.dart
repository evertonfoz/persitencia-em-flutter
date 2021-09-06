import 'package:ec_delivery/features/produtos/data/datasources/produtos_sqlite_datasource.dart';
import 'package:ec_delivery/features/produtos/data/models/produto_model.dart';
import 'package:flutter/material.dart';

class ProdutosListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos registrados'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 28, left: 8, right: 8),
        child: FutureBuilder(
          future: ProdutosSQLiteDatasource().getAll(),
          builder: (context, snapshot) {
            print('1. ${snapshot.hasData}');

            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            List<ProdutoModel> produtos = (snapshot.data as List<ProdutoModel>);
            print('${produtos.length}');
            return ListView.builder(
              itemCount: produtos.length,
              // reverse: true,
              itemBuilder: (context, index) {
                ProdutoModel produto = produtos[index];
                return ListTile(
                  title: Text(produto.nome),
                  subtitle: Text(produto.descricao),
                  trailing: Text('${produto.valor}'),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
