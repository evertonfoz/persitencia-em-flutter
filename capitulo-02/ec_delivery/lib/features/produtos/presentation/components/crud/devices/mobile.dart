import 'package:ec_delivery/features/produtos/presentation/components/crud/button.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/photo.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/textfields.dart';
import 'package:flutter/material.dart';

class MobileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 5, child: FormTextFields()),
        Expanded(flex: 5, child: PhotoProdutoWidget()),
        Expanded(flex: 1, child: SizedBox(height: 20)),
        Expanded(flex: 1, child: GravarProdutoButton()),
      ],
    );
  }
}
