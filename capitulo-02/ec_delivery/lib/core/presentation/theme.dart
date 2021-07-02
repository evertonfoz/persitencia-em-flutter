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
  return InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: kFocusedTextBorderColor),
    ),
    // border: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(6),
    //   borderSide: BorderSide(color: kTextBorderColor),
    // ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: kEnabledTextBorderColor),
    ),
    // focusedErrorBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(5),
    //   borderSide: BorderSide(
    //     color: kFocusedErrorTextBorderColor,
    //     width: 2,
    //   ),
    // ),
    // errorBorder: OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(5),
    //   borderSide: BorderSide(
    //     color: kErrorTextBorderColor,
    //     width: 2,
    //   ),
    // ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
    subtitle1: TextStyle(color: kTextColor), // TextField
  );
}
