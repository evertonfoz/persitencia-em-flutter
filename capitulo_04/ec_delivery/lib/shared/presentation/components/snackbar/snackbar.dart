import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

void showBottomSnackBar({
  bool persistent = true,
  EdgeInsets margin = EdgeInsets.zero,
  required BuildContext context,
  int durationSeconds = 2,
  String? title,
  String? content,
}) {
  assert(title != null || content != null,
      'É preciso informar o título ou conteúdo');
  showFlash(
    context: context,
    // persistent: persistent,
    duration: Duration(seconds: durationSeconds),
    builder: (_, controller) {
      return Flash(
        barrierDismissible: false,
        controller: controller,
        margin: margin,
        behavior: FlashBehavior.fixed,
        position: FlashPosition.bottom,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        borderColor: Colors.black,
        backgroundColor: Colors.black,
        forwardAnimationCurve: Curves.easeInCirc,
        reverseAnimationCurve: Curves.bounceIn,
        child: FlashBar(
          padding: EdgeInsets.all(25),
          title: Visibility(
            visible: title != null,
            child: Text(
              title ?? '',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Visibility(
            visible: content != null,
            child: Text(
              content ?? '',
              style: TextStyle(fontSize: 20),
            ),
          ),
          indicatorColor: Colors.red,
          icon: Icon(
            Icons.info_outline,
            color: Colors.white,
            size: 40,
          ),
        ),
      );
    },
  ).then((_) {
    if (_ != null) {
      _showMessage(message: _.toString(), context: context);
    }
  });
}

void _showMessage({required String message, required BuildContext context}) {
  showFlash(
      context: context,
      duration: Duration(seconds: 3),
      builder: (_, controller) {
        return Flash(
          controller: controller,
          position: FlashPosition.top,
          behavior: FlashBehavior.fixed,
          child: FlashBar(
            icon: Icon(
              Icons.face,
              size: 36.0,
              color: Colors.black,
            ),
            content: Text(message),
          ),
        );
      });
}
