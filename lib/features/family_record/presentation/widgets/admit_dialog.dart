import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void admitAlertDialog(BuildContext context, String message,
    Function onPressedYes, Function onPressedNo) async {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Text(
                  message,
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5A5A5A)),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Yes button
                  GestureDetector(
                    onTap: () => onPressedYes(),
                    child: Container(
                      width: 80.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF389AFF), Color(0xFFC2B4FF)])),
                      child: Center(
                        child: Text(
                          'Yes',
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  //No button
                  GestureDetector(
                    onTap: () => onPressedNo(),
                    child: Container(
                      width: 80.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFFfb7900), Color(0xFFFDC101)])),
                      child: Center(
                        child: Text(
                          'No',
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      });
}
