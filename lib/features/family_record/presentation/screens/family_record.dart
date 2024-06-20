import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_record/features/family_record/presentation/screens/admit_screen.dart';

class FamilyRecord extends StatefulWidget {
  const FamilyRecord({super.key});

  @override
  State<FamilyRecord> createState() => _FamilyRecordState();
}

class _FamilyRecordState extends State<FamilyRecord> {
  Map<String, List<String>> familyList = {
    'image': [
      'assets/img/family_record/father.png',
      'assets/img/family_record/mother.png',
      'assets/img/family_record/sister.png',
      'assets/img/family_record/brother.png',
    ],
    'status': ['Father', 'Mother', 'Sister', 'Brother'],
    'name': [
      'Mr. Brian Wilson',
      'Mrs. Lauren Wilson',
      'Miss Chloe Wilson',
      'Master Mason Wilson',
    ],
  };

  @override
  Widget build(BuildContext context) {
    List<String> imageList = familyList['image']!;
    List<String> statusList = familyList['status']!;
    List<String> nameList = familyList['name']!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Family Record',
          style: GoogleFonts.leagueSpartan(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF5A5A5A)),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF5A5A5A),
            size: 30.w,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 361.w,
                height: 180.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/img/family_record/family_record.png')),
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.transparent),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Family List',
                  style: GoogleFonts.leagueSpartan(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5A5A5A)),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdmitScreen()));
                      },
                      child: Container(
                        width: 75.w,
                        height: 27.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Color(0xFF5A5A5A)),
                        child: Center(
                          child: Text(
                            'Admit',
                            style: GoogleFonts.leagueSpartan(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Container(
                      width: 34.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF5A5A5A), shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "+",
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 26.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: familyList.length + 1,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      familyMember(
                          statusList[index], imageList[index], nameList[index]),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget familyMember(String status, String image, String name) {
    return Container(
      width: 397.w,
      height: 116.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 99.w,
                  height: 99.h,
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.leagueSpartan(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5A5A5A)),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                      width: 91.w,
                      height: 22.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomRight,
                              colors: [Color(0xFF389AFF), Color(0xFFCBC1F7)]),
                          borderRadius: BorderRadius.circular(12.r)),
                      child: Center(
                        child: Text(
                          status,
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 30.w,
              height: 30.h,
              decoration: BoxDecoration(
                  color: Color(0xFFCBC1F7), shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 18.w,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
