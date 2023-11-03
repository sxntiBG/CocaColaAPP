import 'package:flutter/material.dart';

class AppBarTheme1 {
  static final theme = ThemeData.dark().copyWith(
      primaryColor: const Color.fromARGB(66, 0, 255, 128),
      appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 16, 4, 124),
          elevation: 0,
          foregroundColor: Color.fromARGB(4, 60, 237, 0)),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
              fontSize: 45, color: Color.fromARGB(255, 136, 0, 221))));

               static final theme2 = ThemeData.light().copyWith(
      primaryColor: const Color.fromARGB(66, 0, 255, 128),
      appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 16, 4, 124),
          elevation: 0,
          foregroundColor: Color.fromARGB(4, 60, 237, 0)),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
              fontSize: 45, color: Color.fromARGB(255, 136, 0, 221))));
}
