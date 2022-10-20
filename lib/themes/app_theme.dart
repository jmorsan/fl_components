
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
  );
}