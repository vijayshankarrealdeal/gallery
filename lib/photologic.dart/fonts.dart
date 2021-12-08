import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TypoGraphyOfApp  {
  Text heading1(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 88,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5),
    );
  }

  Text heading2(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 55,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5),
    );
  }

  Text heading3(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color, fontSize: 44, fontWeight: FontWeight.w400),
    );
  }

  Text heading4(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 31,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25),
    );
  }

  Text heading5(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color, fontSize: 22, fontWeight: FontWeight.w400),
    );
  }

  Text heading6(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15),
    );
  }

  Text subTitle1(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15),
    );
  }

  Text subTitle2(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1),
    );
  }

  Text body1(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5),
    );
  }

  Text body2(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25),
    );
  }

  Text button(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 13,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25),
    );
  }

  Text caption(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4),
    );
  }

  Text overline(String text, Color color) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
          color: color,
          fontSize: 9,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5),
    );
  }
}
