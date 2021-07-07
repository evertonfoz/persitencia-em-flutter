import 'package:ec_delivery/features/produtos/presentation/components/crud/button.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/photo.dart';
import 'package:ec_delivery/features/produtos/presentation/components/crud/textfields.dart';
import 'package:flutter/material.dart';

class DesktopForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(flex: 2, child: FormTextFields()),
            Expanded(child: PhotoProdutoWidget()),
          ],
        ),
        SizedBox(height: 20),
        GravarProdutoButton(),
      ],
    );
  }
}
