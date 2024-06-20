import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_record/features/family_record/presentation/widgets/admit_dialog.dart';

class AdmitScreen extends StatefulWidget {
  const AdmitScreen({super.key});

  @override
  State<AdmitScreen> createState() => _AdmitScreenState();
}

class _AdmitScreenState extends State<AdmitScreen> {
  Map<String, List<String>> familyWaitingList = {
    'image': [
      'assets/img/family_record/sister.png',
      'assets/img/family_record/brother.png',
    ],
    'status': ['Sister', 'Brother'],
    'name': [
      'Miss Statine Wilson',
      'Master Marco Wilson',
    ],
  };

  @override
  Widget build(BuildContext context) {
    List<String> imageList = familyWaitingList['image']!;
    List<String> statusList = familyWaitingList['status']!;
    List<String> nameList = familyWaitingList['name']!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admit',
          style: GoogleFonts.leagueSpartan(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xFF5A5A5A)),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 30.w,
            color: Color(0xFF5A5A5A),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 361.w,
                height: 180.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/img/family_record/admit_ad.png'))),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Waiting List',
              style: GoogleFonts.leagueSpartan(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5A5A5A)),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    admitAlertDialog(context, 'Do you want to admit all?', () {
                      Navigator.pop(context);
                    }, () {
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    width: 90.w,
                    height: 27.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xFF5A5A5A)),
                    child: Center(
                      child: Text(
                        'Admit All',
                        style: GoogleFonts.leagueSpartan(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () {
                    admitAlertDialog(context, 'Do you want to reject all?', () {
                      Navigator.pop(context);
                    }, () {
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    width: 90.w,
                    height: 27.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Color(0xFF5A5A5A)),
                    child: Center(
                      child: Text(
                        'Reject All',
                        style: GoogleFonts.leagueSpartan(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: statusList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          familyMember(statusList[index], imageList[index],
                              nameList[index]),
                          SizedBox(
                            height: 15.h,
                          ),
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }

  Widget familyMember(String status, String image, String name) {
    return Container(
      width: 397.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22.r),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 270.w,
                  height: 38.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80.w,
                        height: 22.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFF389AFF), Color(0xFFC2B4FF)]),
                        ),
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
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        width: 80.w,
                        height: 22.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFFFB7900), Color(0xFFFDC101)]),
                        ),
                        child: Center(
                          child: Text(
                            'Reject',
                            style: GoogleFonts.leagueSpartan(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
