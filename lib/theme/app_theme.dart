import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    //? Appbar
    appBarTheme: const AppBarTheme(
        color: primary, elevation: 5, toolbarHeight: 80, centerTitle: true),
    //? TextButtons
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
    //? FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppTheme.primary, elevation: 10),
    //? ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 0)),
    //? AlertDialog
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 20,
    ),
    //? InputFields
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        focusColor: primary,
        iconColor: primary,
        // labelStyle: TextStyle(color: Colors.black),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: primary))),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.black,
    // iconTheme: const IconThemeData(color: Colors.white),
    //? Appbar
    appBarTheme: const AppBarTheme(
        color: primary, elevation: 5, toolbarHeight: 60, centerTitle: true),
    //? TextButtons
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
    //? FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppTheme.primary, elevation: 10),
    //? ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 0)),
    //? AlertDialog
    dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 20,
        backgroundColor: Colors.grey[900]),
    //? InputFields
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        focusColor: primary,
        iconColor: primary,
        // labelStyle: TextStyle(color: Colors.black),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: primary))),
  );
}
