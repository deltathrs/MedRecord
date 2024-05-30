import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:med_record/features/record/presentation/screens/date_picker.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  String sleepOverview =
      '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="#e5ff1f" d="M11.38 2.019a7.5 7.5 0 1 0 10.6 10.6C21.662 17.854 17.316 22 12.001 22C6.477 22 2 17.523 2 12c0-5.315 4.146-9.661 9.38-9.981"/></svg>';

  String bodyTemperature =
      '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512"><path fill="#FF8D3A" d="M448 96a32 32 0 1 0-64 0a32 32 0 1 0 64 0m-128 0a96 96 0 1 1 192 0a96 96 0 1 1-192 0M144 64c-26.5 0-48 21.5-48 48v164.5c0 17.3-7.1 31.9-15.3 42.5C70.2 332.6 64 349.5 64 368c0 44.2 35.8 80 80 80s80-35.8 80-80c0-18.5-6.2-35.4-16.7-48.9c-8.2-10.6-15.3-25.2-15.3-42.5V112c0-26.5-21.5-48-48-48M32 112C32 50.2 82.1 0 144 0s112 50.1 112 112v164.5c0 .1.1.3.2.6c.2.6.8 1.6 1.7 2.8c18.9 24.4 30.1 55 30.1 88.1c0 79.5-64.5 144-144 144S0 447.5 0 368c0-33.2 11.2-63.8 30.1-88.1c.9-1.2 1.5-2.2 1.7-2.8c.1-.3.2-.5.2-.6zm160 256c0 26.5-21.5 48-48 48s-48-21.5-48-48c0-20.9 13.4-38.7 32-45.3V272c0-8.8 7.2-16 16-16s16 7.2 16 16v50.7c18.6 6.6 32 24.4 32 45.3"/></svg>';

  String heartRate =
      '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 14 14"><path fill="#CA6B6E" fill-rule="evenodd" d="M6.992 2.606c-.965-.961-1.972-1.438-2.94-1.51c-1.094-.08-2.06.364-2.756 1.066C-.072 3.542-.49 6.037 1.22 7.754a.5.5 0 0 0 .015.014l5.418 5.012a.5.5 0 0 0 .68 0l5.418-5.012l.011-.011c1.734-1.71 1.315-4.205-.06-5.585c-.698-.702-1.667-1.147-2.763-1.068c-.97.07-1.98.543-2.946 1.502Zm-.34 1.982a.625.625 0 0 0-1.128-.043L4.668 6.18H3.515a.625.625 0 0 0 0 1.25h1.531c.233 0 .446-.13.554-.335l.423-.807l1.043 2.42a.625.625 0 0 0 1.06.147L9.282 7.43h1.202a.625.625 0 0 0 0-1.25h-1.5a.625.625 0 0 0-.486.231l-.693.855l-1.154-2.677Z" clip-rule="evenodd"/></svg>';

  String waterIntake =
      '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512"><path fill="#389AFF" d="M265.12 60.12a12 12 0 0 0-18.23 0C215.23 97.15 112 225.17 112 320c0 88.37 55.64 144 144 144s144-55.63 144-144c0-94.83-103.23-222.85-134.88-259.88M272 412a12 12 0 0 1-11.34-16a11.89 11.89 0 0 1 11.41-8A60.06 60.06 0 0 0 332 328.07a11.89 11.89 0 0 1 8-11.41A12 12 0 0 1 356 328a84.09 84.09 0 0 1-84 84"/></svg>';

  String footSteps =
      '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512"><path fill="#3546B1" d="M130.54 358.31c-12.83 1.88-33.95 5.38-48-10.56S56.34 293.32 51 258.92c-7.88-50.7-.06-93.43 22-120.31c13-15.83 30.06-25 49.34-26.46c16.51-1.27 41.18 5.19 65 43.19c14.92 23.81 26.27 55.44 31.14 86.77c5.88 37.82 11.61 78.18-8.44 92.65c-11.31 8.17-19.43 11-38.62 15.57c-15.78 3.75-28.04 6.09-40.88 7.98m-22.82 32.53l108.89-22.46c9.2-1.9 16.58 3.16 20 18.32c11.22 49.76-4.86 109.3-55.22 109.3c-47.69 0-79.47-54.36-84.66-83.58c-2.37-13.25 1.01-19.53 10.99-21.58m232.87-136.5c-19.19-4.55-27.31-7.4-38.62-15.57c-20.05-14.47-14.32-54.83-8.44-92.65c4.87-31.33 16.22-63 31.14-86.77c23.8-38 48.47-44.46 65-43.19C408.93 17.63 426 26.78 439 42.61c22.08 26.88 29.9 69.61 22 120.31c-5.35 34.4-17.46 72.76-31.59 88.83s-35.13 12.44-48 10.56s-25.05-4.23-40.82-7.97m63.69 40.5l-108.89-22.46c-9.2-1.9-16.58 3.16-20 18.32c-11.21 49.76 4.87 109.3 55.23 109.3c47.69 0 79.47-54.36 84.66-83.58c2.36-13.25-1.02-19.53-11-21.58"/></svg>';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Summary',
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5A5A5A)),
                  ),
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 24,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  DatePickerDropdown(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Activities',
                style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A)),
              ),
              SizedBox(
                height: 5,
              ),
              ActivitiesBox(
                sleepOverview,
                'Sleep Overview',
                Color(0xFFFFF5D3),
                '7 hours 28 min',
                'Hipertemia',
                Color(0xFF389AFF),
              ),
              SizedBox(
                height: 10,
              ),
              ActivitiesBox(
                bodyTemperature,
                'Body Temperature',
                Color(0xFFFFDEC7),
                '43 Celcius',
                'Hipertemia',
                Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              ActivitiesBox(
                heartRate,
                'Heart Rate',
                Color(0xFFFFE4EC),
                '98 BPM',
                'Normal',
                Color(0xFF389AFF),
              ),
              SizedBox(
                height: 10,
              ),
              ActivitiesBox(
                waterIntake,
                'Water Intake',
                Color(0xFFC1E0FF),
                '500 Mililiters',
                'Less',
                Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              ActivitiesBox(
                footSteps,
                'Footsteps',
                Color(0xFFD3D6E8),
                '991 Steps',
                'Normal',
                Color(0xFF389AFF),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Summary',
                style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A)),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 360,
                  height: 119,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(8),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Text(
                      'Hi Rifaldi, your sleep needs today are good, your heart rate is normal, your body movements are good. However, your body temperature is far above normal, get checked immediately! And don'
                      't forget to fulfill your water needs more today. ',
                      style: GoogleFonts.leagueSpartan(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF5A5A5A)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget ActivitiesBox(String icon, String title, Color background,
      String subtitle, String status, Color status_color) {
    return Stack(
      children: [
        Container(
          width: 385,
          height: 73,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: background,
                    child: Iconify(icon),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    // Add Expanded widget here
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align text to start
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.lato(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          subtitle,
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8189B0)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 10), // Space between text and status indicator
                  Container(
                    height: 23,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: status_color,
                          ),
                          child: Center(
                            child: Text(
                              status,
                              style: GoogleFonts.mulish(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
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
        )
      ],
    );
  }
}
