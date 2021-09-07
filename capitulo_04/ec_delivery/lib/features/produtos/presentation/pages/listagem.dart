import 'package:ec_delivery/core/presentation/constants/urls.dart';
import 'package:ec_delivery/shared/presentation/components/circleavatar/circleavatar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../data/datasources/produtos_sqlite_datasource.dart';
import '../../data/models/produto_model.dart';

class ProdutosListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos registrados'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 28),
        child: FutureBuilder(
          future: ProdutosSQLiteDatasource().getAll(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: CircularProgressIndicator(
                color: Colors.yellow.shade400,
              ));
            }

            return _listView(snapshot.data as List<ProdutoModel>);
          },
        ),
      ),
    );
  }

  _listView(List<ProdutoModel> produtos) {
    return ListView.builder(
      itemCount: produtos.length,
      itemBuilder: (context, index) {
        ProdutoModel produto = produtos[index];
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 4.0),
          child: Row(children: [
            CircleAvatarPEF(
              imageURL: kTesteFotoURL,
              backgroundColor: Colors.indigo.shade900,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    produto.nome,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    produto.descricao,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${_valorEmMoedaCorrente(context, produto.valor)}',
              style: TextStyle(
                color: Colors.yellow.shade500,
                fontSize: 20,
              ),
            ),
          ]),
        );
      },
    );
  }

  _valorEmMoedaCorrente(BuildContext context, double valor) {
    final formatadorValor =
        NumberFormat.simpleCurrency(locale: Intl.defaultLocale);
    return formatadorValor.format(
      valor,
    );
  }
}
