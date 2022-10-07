import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  static final fontBrand =
      GoogleFonts.oswald(fontWeight: FontWeight.w700, shadows: [
    const Shadow(
      blurRadius: 1,
      color: Colors.black38,
      offset: Offset(1, 1),
    )
  ]);
  static final font1 = GoogleFonts.oswald();
  static final font2 = GoogleFonts.lato();
  static final font3 = GoogleFonts.mulish();
}

class AppTextSize {
  static const h1 = 16.0;
  static const h2 = 14.0;
  static const h3 = 12.0;
  static const h4 = 16.0;
  static const h5 = 16.0;
  static const h6 = 16.0;
  static const brand = 20.0;
  static const title = 12.0;
  static const content = 12.0;
}
