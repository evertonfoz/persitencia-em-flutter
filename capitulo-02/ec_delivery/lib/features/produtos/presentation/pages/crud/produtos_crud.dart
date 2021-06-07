import 'package:ec_delivery/features/produtos/presentation/components/crud/produtos_form.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProdutosCRUDPage extends StatelessWidget {
  var appBar = AppBar(title: Text('Dados do Produto'));
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            height: _getHeigthOfVisibleScreen(context),
            child: ProdutosFormWidget(),
          ),
        ),
      ),
    );
  }

  double _getHeigthOfVisibleScreen(BuildContext context) {
    return MediaQuery.of(context).size.height -
        (MediaQuery.of(context).viewPadding.bottom +
            MediaQuery.of(context).viewPadding.top +
            appBar.preferredSize.height);
  }
}
