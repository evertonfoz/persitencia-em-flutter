import 'package:ec_delivery/shared/presentation/components/buttons/default_text_button.dart';
import 'package:ec_delivery/shared/presentation/components/checkbox/checkbox.dart';
import 'package:flutter/material.dart';

class BottomRowBoasVindasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CheckBoxWidget(
          text: 'Não exibir mais',
          // onChanged: (value) {
          //   // _checkedBoxValue = value;
          // },
        ),
        DefaultTextButton(
          text: 'Avançar',
          textFontSize: 24,
          onPressed: () async {
            // var sp = await SharedPreferences.getInstance();
            // var ds = WelcomeDataSource(sharedPreferences: sp);

            // await ds.registerDontShowAgain(value: _checkedBoxValue);

            // Navigator.pushReplacement(context,
            //     MaterialPageRoute(builder: (context) => ProdutoCRUDPage()));
          },
        ),
      ],
    );
  }
}
