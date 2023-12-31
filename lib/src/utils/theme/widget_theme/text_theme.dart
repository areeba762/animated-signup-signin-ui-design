import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ATextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(color: Colors.black87, fontSize: 26, fontWeight: FontWeight.bold),
    titleSmall: GoogleFonts.poppins(color: Colors.black87, fontSize: 14),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(color: Colors.white70, fontSize:26, fontWeight: FontWeight.bold),
    titleSmall: GoogleFonts.poppins(color: Colors.white60, fontSize: 14),
  );
}