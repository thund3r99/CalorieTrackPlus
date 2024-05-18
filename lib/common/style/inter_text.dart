import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget interText({required String text, TextStyle? style, TextAlign? align}) {
  return Text(
    text,
    style: GoogleFonts.inter(textStyle: style),
    textAlign: align,
  );
}
