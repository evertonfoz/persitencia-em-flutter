import 'package:ec_delivery/shared/presentation/components/buttons/default_text_button.dart';
import 'package:flutter/material.dart';

class DismissiblePEF extends StatelessWidget {
  final Widget child;
  final String titulo;
  final IconData icone;

  const DismissiblePEF({
    required this.child,
    required this.titulo,
    required this.icone,
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
              title: Text('Delete'),
              content: Text('Delete'),
              actions: <Widget>[
                DefaultTextButton(
                  text: 'Cancelar',
                  textColor: Colors.blue.shade500,
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
                // FlatButton(
                //   onPressed: () {
                //     // Navigator.pop(context, false);

                //   },
                //   child: Text('No'),
                // ),
                // FlatButton(
                //   onPressed: () {
                //     // Navigator.pop(context, true);
                //     Navigator.of(
                //       context,
                //       // rootNavigator: true,
                //     ).pop(true);
                //   },
                //   child: Text('Yes'),
                // ),
              ],
            );
          },
        );
      },
    );
  }
}

                // confirmDismiss: (direction) {
                //   return showDialog(
                //     context: context,
                //     builder: (context) {
                //       return CupertinoAlertDialog(
                //         title: Text('Delete'),
                //         content: Text('Delete'),
                //         actions: <Widget>[
                //           FlatButton(
                //             onPressed: () {
                //               // Navigator.pop(context, false);
                //               Navigator.of(
                //                 context,
                //                 // rootNavigator: true,
                //               ).pop(false);
                //             },
                //             child: Text('No'),
                //           ),
                //           FlatButton(
                //             onPressed: () {
                //               // Navigator.pop(context, true);
                //               Navigator.of(
                //                 context,
                //                 // rootNavigator: true,
                //               ).pop(true);
                //             },
                //             child: Text('Yes'),
                //           ),
                //         ],
                //       );
                //     },
                //   );
                // },
                
