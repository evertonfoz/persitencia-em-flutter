import 'package:flutter/material.dart';

class GravarProdutoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width * 0.95,
        // height: 45,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ElevatedButton.icon(
          icon: Icon(Icons.save),
          label: Text(
            'Gravar',
            style: TextStyle(fontSize: 24),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
