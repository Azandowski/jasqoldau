import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const lightBlue = Color.fromARGB(255, 99, 213, 255);

final theme = ThemeData(
  textTheme: GoogleFonts.openSansTextTheme(
    ThemeData.dark().textTheme,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromARGB(255, 31, 36, 37),
  ),
  primaryColor: Color.fromARGB(255, 31, 36, 37),
  colorScheme:
      const ColorScheme.light(secondary: Color.fromARGB(255, 31, 34, 34)),
  scaffoldBackgroundColor: Color.fromARGB(255, 25, 26, 26),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
