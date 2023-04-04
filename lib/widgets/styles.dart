import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = Color(0xffFC9D45);
Color kSecondaryColor = Color(0xff573353);
Color kThemeColor = Color.fromARGB(255, 58, 73, 204);
Color kSmallColor = Color(0x00000000);
Color kColor = Colors.white;

final kTitle = TextStyle(
  fontFamily: 'Klasik',
  fontSize: 30.0,
  color: kSecondaryColor,
  fontWeight: FontWeight.bold,
);

final kBodyText1 = TextStyle(
  color: kThemeColor,
  fontSize: 14.0,
);
final kBody = TextStyle(
  fontSize: 16.0,
  fontFamily: 'Klasik',
  fontWeight: FontWeight.bold,
);

final KhintStyle = const TextStyle(color: Color.fromARGB(255, 174, 175, 175));

final kFillColor = const Color.fromARGB(22, 251, 222, 237);

final kFocusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.circular(50.0));
final kEnabledBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.circular(100.0));

const kPadding = EdgeInsets.only(left: 8.0, top: 8.0);
final kstyle = GoogleFonts.lato(
  textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
);

const kDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
      bottomLeft: Radius.circular(10.0),
      bottomRight: Radius.circular(10.0),
    ),
    color: Color.fromARGB(255, 58, 73, 204));
