
import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.green;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    primaryColor: Colors.amber,
        //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: Colors.amber,
        elevation: 0,
      ),

      scaffoldBackgroundColor:Colors.black,

      textButtonTheme: TextButtonThemeData(
        
        style: TextButton.styleFrom(
          foregroundColor: primary
        )
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 0,
        )
      ),

      inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide( color: primary ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    )
  );
}