import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

Stack ActivitiesBox(String title, double degree, String icon, String element) {
  return Stack(
    children: [
      Container(
        width: 170,
        height: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style:
                  GoogleFonts.lato(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  degree.toString(),
                  style: GoogleFonts.lato(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF5A5A5A)),
                ),
                SizedBox(
                  width: 2,
                ),
                Iconify(
                  icon,
                  size: 35,
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  element,
                  style: GoogleFonts.lato(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
