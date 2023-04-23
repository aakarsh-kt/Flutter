import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.lightGreen,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        //textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
