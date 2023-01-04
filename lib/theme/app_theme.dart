import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color.fromARGB(255, 59, 201, 220);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Definir el color primario de la aplicacion
    primaryColor: primaryColor,
    // Definir el diseño de todos los apps bars
    appBarTheme: const AppBarTheme(
      color: primaryColor,
      elevation: 10,
    ),
    // definir el diseño de todos los botones
    textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(backgroundColor: primaryColor)
    ),

    // definir el diseño de todos los botones flotantes
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation:10,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
        elevation: 10,

      )
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),

       focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),

        border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    )
  );
}