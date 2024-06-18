import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  List<String> category = [
    "General Doctor",
    "Cardiologist",
    "Dentist",
    "Pediatrician"
  ];
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chat Bot AI',
              style: GoogleFonts.leagueSpartan(
                  color: Color(0xFF5A5A5A),
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: Container(
                width: 361.w,
                height: 163.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Colors.transparent,
                ),
                child: Image.asset(
                  'assets/img/doctor/chatbot_poster.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Chat with Doctor',
              style: GoogleFonts.leagueSpartan(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5A5A5A)),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Container(
                  width: 71.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Center(
                    child: Text(
                      'Purchase',
                      style: GoogleFonts.lato(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF666666)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 127.w,
                  height: 26.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: Color(0xFFD9D9D9)),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: selectedCategory,
                          alignment: Alignment.center,
                          items: [
                            for (var item in category)
                              DropdownMenuItem(
                                value: item,
                                child: Text(
                                  item,
                                  style: GoogleFonts.lato(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF666666)),
                                ),
                              ),
                          ],
                          onChanged: (newValue) {
                            setState(() {
                              selectedCategory = newValue;
                            });
                          })),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return doctorBox();
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget doctorBox() {
    return Container(
      width: 430.w,
      height: 91.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 36.r,
                  backgroundImage: AssetImage(
                    'assets/img/doctor/doctor1.jpeg',
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'dr.James Rodriguez',
                      style: GoogleFonts.lato(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5A5A5A)),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'General Doctor',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5A5A5A)),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Rp. 8000',
                      style: GoogleFonts.lato(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF389AFF)),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: Container(
              width: 88.w,
              height: 31.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF389AFF), Color(0xFFCBC1F7)]),
                  borderRadius: BorderRadius.circular(12.r)),
              child: Center(
                child: Text(
                  'Chat Now',
                  style: GoogleFonts.lato(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
