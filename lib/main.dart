import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'build_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: BuildPage(),
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.white,
        backgroundColor: Colors.black,
        canvasColor: Colors.black,
        accentColor: Colors.white.withOpacity(0.6),
        textTheme: GoogleFonts.montserratTextTheme(),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 35,
            ))),
  ));
}
