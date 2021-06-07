import 'package:flutter/material.dart';

class ProdutosCRUDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(title: Text('Dados do Produto'));
    return Scaffold(
      appBar: appBar2,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).viewPadding.bottom +
                    MediaQuery.of(context).viewPadding.top +
                    appBar2.preferredSize.height),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Nome'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Descrição'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Valor'),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Stack(
                    // alignment: Alignment.bottomRight,
                    children: [
                      FlutterLogo(
                        size: 200,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.photo_camera,
                          size: 48,
                        ),
                      ),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 200),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.save),
                    label: Text('Gravar'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
