import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

Widget FeaturesIcon(String title, Color border, String icon) {
  return Column(children: [
    Container(
      width: 60.w,
      height: 62.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: border),
      child: Iconify(icon),
    ),
    SizedBox(
      height: 5.h,
    ),
    Text(
      title,
      style: GoogleFonts.lato(
          fontSize: 10.sp, fontWeight: FontWeight.w600, color: Color(0xFF666666)),
    )
  ]);
}
