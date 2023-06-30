import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryFont {
  static TextStyle thin() {
    return GoogleFonts.cabin(
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle light() {
    return GoogleFonts.cabin(
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium() {
    return GoogleFonts.cabin(
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold() {
    return GoogleFonts.cabin(fontWeight: FontWeight.w700);
  }
}
