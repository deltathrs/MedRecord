import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

FeaturesIcon(String title, Color border, String icon) {
  return Column(children: [
    Container(
      width: 60,
      height: 62,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), color: border),
      child: Iconify(icon),
    ),
    SizedBox(
      height: 5,
    ),
    Text(
      title,
      style: GoogleFonts.lato(
          fontSize: 10, fontWeight: FontWeight.w600, color: Color(0xFF666666)),
    )
  ]);
}
