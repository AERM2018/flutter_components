import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.red;
  static final ThemeData appDarkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.red[800],
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        elevation: 0,
      ));
}
