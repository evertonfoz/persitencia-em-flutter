import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.indigo.shade600,
    appBarTheme: appBarTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.indigo.shade900,
    elevation: 2,
    // brightness: Brightness.light,
    // iconTheme: IconThemeData(color: Colors.black),
    // textTheme: TextTheme(
    //   headline6: TextStyle(color: Colors.white, fontSize: 26),
    // ),
  );
}

InputDecorationTheme inputDecorationTheme() {
  // OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(28),
  //   borderSide: BorderSide(color: kTextColor),
  //   gapPadding: 10,
  // );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    labelStyle: TextStyle(
      color: kLabelTextColor.shade200,
    ),

    // hintStyle: TextStyle(color: Colors.red),
    // contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    // enabledBorder: outlineInputBorder,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: kTextColor),
    ),
    border: UnderlineInputBorder(),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: kErrorTextColor),
    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
    subtitle1: TextStyle(color: kTextColor), // TextField
  );
}
