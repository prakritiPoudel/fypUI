import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final light = ThemeData(
      primaryColor: Color.fromARGB(255, 159, 167, 194),
      brightness: Brightness.light);

  static final dark = ThemeData(
      primaryColor: Color.fromARGB(255, 177, 243, 33),
      brightness: Brightness.light);
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold));
}
