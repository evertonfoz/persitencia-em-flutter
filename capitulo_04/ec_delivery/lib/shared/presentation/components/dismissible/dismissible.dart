import 'package:ec_delivery/shared/presentation/components/buttons/default_text_button.dart';
import 'package:flutter/material.dart';

class DismissiblePEF extends StatelessWidget {
  final Widget child;
  final String titulo;
  final IconData icone;
  final String tituloConfirmacao;
  final String conteudoConfirmacao;
  final VoidCallback onDismissed;

  const DismissiblePEF({
    required this.child,
    required this.titulo,
    required this.icone,
    required this.tituloConfirmacao,
    required this.conteudoConfirmacao,
    required this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      child: child,
      background: Container(
        // padding: const EdgeInsets.only(right: 20.0),
        // alignment: Alignment.centerRight,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              titulo,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              icone,
              size: 32.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
      confirmDismiss: (direction) {
        return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                tituloConfirmacao,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              content: Text(
                conteudoConfirmacao,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              actions: <Widget>[
                DefaultTextButton(
                  text: 'Cancelar',
                  textColor: Colors.blue.shade900,
                  onPressed: () => Navigator.of(
                    context,
                  ).pop(false),
                ),
                DefaultTextButton(
                    text: 'OK',
                    textColor: Colors.blue.shade900,
                    onPressed: () => Navigator.of(
                          context,
                        ).pop(true)),
              ],
            );
          },
        );
      },
      onDismissed: (direction) => onDismissed(),
    );
  }
}
