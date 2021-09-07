import 'package:flutter/material.dart';

const kTextColor = Colors.white;

ThemeData theme() {
  return ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.indigo.shade900),
    scaffoldBackgroundColor: Colors.indigo.shade600,
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    // bodyText1: TextStyle(color: Colors.amberAccent),
    bodyText2: TextStyle(color: kTextColor),
    subtitle1: TextStyle(color: Colors.amberAccent),
    caption: TextStyle(color: Colors.red),
  );
}
