import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(192, 209, 125, 1),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromRGBO(133, 37, 43, 1),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color.fromRGBO(192, 209, 125, 1)),
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(81, 80, 84, 1),
      fontWeight: FontWeight.bold,
      fontSize: 17,
    ),
    headline2: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(81, 80, 84, 1),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headline3: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(177, 177, 177, 1),
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    headline4: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(81, 80, 84, 1),
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
    headline5: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(81, 80, 84, 1),
      fontWeight: FontWeight.w900,
      fontSize: 14,
    ),
    headline6: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(133, 19, 43, 1),
      fontWeight: FontWeight.w900,
      fontSize: 20,
      decoration: TextDecoration.underline,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Raleway',
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(81, 80, 84, 1),
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12,
    ),
    overline: TextStyle(
      fontFamily: 'Raleway',
      color: Color.fromRGBO(81, 80, 84, 1),
      fontWeight: FontWeight.bold,
      fontSize: 10,
    ),
  );
}
