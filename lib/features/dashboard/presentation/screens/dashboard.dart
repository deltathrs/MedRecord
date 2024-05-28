import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:med_record/common/widgets/activities_box.dart';
import 'package:med_record/common/widgets/feature_box.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Map<String, dynamic>> activitiesData = [
    {
      'title': 'Body Temperature',
      'degree': 36.1,
      'icon':
          '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="#9b2ff4" d="M12 21q-2.075 0-3.537-1.463T7 16q0-1.2.525-2.238T9 12V6q0-1.25.875-2.125T12 3t2.125.875T15 6v6q.95.725 1.475 1.763T17 16q0 2.075-1.463 3.538T12 21m-1-11h2V6q0-.425-.288-.712T12 5t-.712.288T11 6z"/></svg>',
      'element': 'Celcius'
    },
    {
      'title': 'Heart rate',
      'degree': 120.0,
      'icon':
          '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="#fa0000" d="M17.66 11.2c-.23-.3-.51-.56-.77-.82c-.67-.6-1.43-1.03-2.07-1.66C13.33 7.26 13 4.85 13.95 3c-.95.23-1.78.75-2.49 1.32c-2.59 2.08-3.61 5.75-2.39 8.9c.04.1.08.2.08.33c0 .22-.15.42-.35.5c-.23.1-.47.04-.66-.12a.6.6 0 0 1-.14-.17c-1.13-1.43-1.31-3.48-.55-5.12C5.78 10 4.87 12.3 5 14.47c.06.5.12 1 .29 1.5c.14.6.41 1.2.71 1.73c1.08 1.73 2.95 2.97 4.96 3.22c2.14.27 4.43-.12 6.07-1.6c1.83-1.66 2.47-4.32 1.53-6.6l-.13-.26c-.21-.46-.77-1.26-.77-1.26m-3.16 6.3c-.28.24-.74.5-1.1.6c-1.12.4-2.24-.16-2.9-.82c1.19-.28 1.9-1.16 2.11-2.05c.17-.8-.15-1.46-.28-2.23c-.12-.74-.1-1.37.17-2.06c.19.38.39.76.63 1.06c.77 1 1.98 1.44 2.24 2.8c.04.14.06.28.06.43c.03.82-.33 1.72-.93 2.27"/></svg>',
      'element': 'BPM'
    },
    {
      'title': 'Footsteps',
      'degree': 5.1,
      'icon':
          '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512"><path fill="currentColor" d="M133.83 361.27c-22.61 0-41-8.17-54.79-24.39s-22.84-40.29-28.11-75.31c-7.76-51.61-.06-95.11 21.68-122.48c12.8-16.12 29.6-25.44 48.58-26.94c16.25-1.3 40.54 5.29 64 44c14.69 24.24 25.86 56.44 30.65 88.34c5.79 38.51 1.48 66.86-13.18 86.65c-11.64 15.72-29.54 25.46-53.21 29a106.5 106.5 0 0 1-15.62 1.13M173 496c-13.21 0-26.6-4.23-38.66-12.36a79.8 79.8 0 0 1-33.52-50.6c-2.85-14.66-1.14-26.31 5.22-35.64c10.33-15.15 28.87-18.56 48.49-22.18c2.07-.38 4.17-.76 6.3-1.17c4.52-.86 9.14-2 13.62-3.11c16.78-4.14 34.14-8.43 48.47 1.75c9.59 6.8 15 18.36 16.62 35.32c1.84 19.57-2.36 39.1-11.83 55c-10.19 17.11-25.47 28.42-43 31.86A61 61 0 0 1 173 496m205.17-230.73a107 107 0 0 1-15.6-1.2c-23.66-3.5-41.56-13.25-53.2-29c-14.66-19.79-19-48.13-13.18-86.65c4.79-31.93 15.93-64.1 30.55-88.25c23.34-38.57 47.66-45.26 64-44.08c18.92 1.38 35.69 10.57 48.51 26.6c21.89 27.37 29.65 71 21.86 122.84c-5.27 35-14.2 58.95-28.11 75.31s-32.22 24.43-54.83 24.43M339 400a61 61 0 0 1-11.68-1.13c-17.56-3.44-32.84-14.75-43-31.86c-9.47-15.9-13.67-35.43-11.83-55c1.6-17 7-28.52 16.62-35.33c14.33-10.17 31.69-5.89 48.47-1.74c4.48 1.1 9.1 2.24 13.62 3.11l6.29 1.17c19.63 3.61 38.17 7 48.5 22.17c6.36 9.33 8.07 21 5.22 35.64a79.78 79.78 0 0 1-33.52 50.61C365.56 395.78 352.17 400 339 400"/></svg>',
      'element': 'Steps'
    },
  ];

  List<String> slider = [
    "assets/img/dashboard/offer1.png",
    "assets/img/dashboard/offer2.png",
    "assets/img/dashboard/offer3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: GoogleFonts.leagueSpartan(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xFF67BFFF)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Ryan Wilson',
                        style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF5A5A5A)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 14,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(Icons.notifications)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 366,
                height: 166,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey),
                child: Image.asset('assets/img/dashboard/ad1.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Daily Activities',
                style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A)),
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    itemCount: activitiesData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final activity = activitiesData[index];
                      return Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: ActivitiesBox(
                            activity['title'],
                            activity['degree'],
                            activity['icon'],
                            activity['element'],
                          ));
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'MedRecord Features',
                style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Wrap(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FeaturesIcon('Heart Rate', Color(0xFF67BFFF),
                            '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><g fill="none" fill-rule="evenodd"><path d="M24 0v24H0V0zM12.594 23.258l-.012.002l-.071.035l-.02.004l-.014-.004l-.071-.036c-.01-.003-.019 0-.024.006l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.016-.018m.264-.113l-.014.002l-.184.093l-.01.01l-.003.011l.018.43l.005.012l.008.008l.201.092c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.003-.011l.018-.43l-.003-.012l-.01-.01z"/><path fill="white" d="M12 4.339c2.072-1.686 4.534-1.68 6.494-.538c2.095 1.221 3.569 3.7 3.504 6.592c-.079 3.52-2.752 6.634-7.323 9.424l-.356.214c-.331.198-.662.398-1.007.573c-.405.206-.85.396-1.312.396c-.463 0-.907-.19-1.313-.396c-.23-.117-.453-.244-.674-.375l-.332-.198c-4.788-2.844-7.598-6.029-7.679-9.638c-.065-2.892 1.409-5.37 3.504-6.592C7.466 2.66 9.928 2.653 12 4.34Zm-2.07 6.037l-1.036 2.071A1 1 0 0 1 8 13H4.776c.925 1.646 2.713 3.348 5.55 5.085l.376.227c.294.175.586.354.891.509c.13.066.265.134.407.173c.142-.04.276-.107.407-.173c.203-.103.4-.218.597-.334l.294-.175c3.056-1.816 4.961-3.594 5.926-5.312h-3.689l-1.703 2.555a1 1 0 0 1-1.751-.16l-2.15-5.02Zm7.557-4.846c-1.394-.812-3.136-.784-4.644.742a1.188 1.188 0 0 1-1.686 0C9.65 4.746 7.907 4.718 6.513 5.53c-1.444.841-2.56 2.628-2.511 4.818c.003.144.012.29.028.434l.03.218h3.322l1.724-3.447a1 1 0 0 1 1.755-.061l.058.114l2.273 5.304l.976-1.465a1 1 0 0 1 .708-.437L15 11h4.94a4.98 4.98 0 0 0 .058-.652c.05-2.19-1.067-3.977-2.511-4.818"/></g></svg>'),
                        SizedBox(
                          width: 12,
                        ),
                        FeaturesIcon('Foot Steps', Color(0xFF67BFFF),
                            '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512"><path fill="white" d="M130.54 358.31c-12.83 1.88-33.95 5.38-48-10.56S56.34 293.32 51 258.92c-7.88-50.7-.06-93.43 22-120.31c13-15.83 30.06-25 49.34-26.46c16.51-1.27 41.18 5.19 65 43.19c14.92 23.81 26.27 55.44 31.14 86.77c5.88 37.82 11.61 78.18-8.44 92.65c-11.31 8.17-19.43 11-38.62 15.57c-15.78 3.75-28.04 6.09-40.88 7.98m-22.82 32.53l108.89-22.46c9.2-1.9 16.58 3.16 20 18.32c11.22 49.76-4.86 109.3-55.22 109.3c-47.69 0-79.47-54.36-84.66-83.58c-2.37-13.25 1.01-19.53 10.99-21.58m232.87-136.5c-19.19-4.55-27.31-7.4-38.62-15.57c-20.05-14.47-14.32-54.83-8.44-92.65c4.87-31.33 16.22-63 31.14-86.77c23.8-38 48.47-44.46 65-43.19C408.93 17.63 426 26.78 439 42.61c22.08 26.88 29.9 69.61 22 120.31c-5.35 34.4-17.46 72.76-31.59 88.83s-35.13 12.44-48 10.56s-25.05-4.23-40.82-7.97m63.69 40.5l-108.89-22.46c-9.2-1.9-16.58 3.16-20 18.32c-11.21 49.76 4.87 109.3 55.23 109.3c47.69 0 79.47-54.36 84.66-83.58c2.36-13.25-1.02-19.53-11-21.58"/></svg>'),
                        SizedBox(
                          width: 12,
                        ),
                        FeaturesIcon('Family Record', Color(0xFF67BFFF),
                            '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 48 48"><g fill="none" stroke="white" stroke-linecap="round" stroke-width="4"><path d="M10 19s-5.143 2-6 9m34-9s5.143 2 6 9m-26-9s4.8 1.167 6 7m6-7s-4.8 1.167-6 7m-4 8s-4.2.75-6 6m14-6s4.2.75 6 6"/><circle cx="24" cy="31" r="5" stroke-linejoin="round"/><circle cx="34" cy="14" r="6" stroke-linejoin="round"/><circle cx="14" cy="14" r="6" stroke-linejoin="round"/></g></svg>'),
                        SizedBox(
                          width: 12,
                        ),
                        FeaturesIcon('Body Temp', Color(0xFF67BFFF),
                            '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512"><path fill="white" d="M448 96a32 32 0 1 0-64 0a32 32 0 1 0 64 0m-128 0a96 96 0 1 1 192 0a96 96 0 1 1-192 0M144 64c-26.5 0-48 21.5-48 48v164.5c0 17.3-7.1 31.9-15.3 42.5C70.2 332.6 64 349.5 64 368c0 44.2 35.8 80 80 80s80-35.8 80-80c0-18.5-6.2-35.4-16.7-48.9c-8.2-10.6-15.3-25.2-15.3-42.5V112c0-26.5-21.5-48-48-48M32 112C32 50.2 82.1 0 144 0s112 50.1 112 112v164.5c0 .1.1.3.2.6c.2.6.8 1.6 1.7 2.8c18.9 24.4 30.1 55 30.1 88.1c0 79.5-64.5 144-144 144S0 447.5 0 368c0-33.2 11.2-63.8 30.1-88.1c.9-1.2 1.5-2.2 1.7-2.8c.1-.3.2-.5.2-.6zm160 256c0 26.5-21.5 48-48 48s-48-21.5-48-48c0-20.9 13.4-38.7 32-45.3V272c0-8.8 7.2-16 16-16s16 7.2 16 16v50.7c18.6 6.6 32 24.4 32 45.3"/></svg>'),
                        SizedBox(
                          width: 12,
                        ),
                        FeaturesIcon('Others', Colors.white,
                            '<svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 256 256"><g fill="#67BFFF"><path d="M152 128a24 24 0 1 1-24-24a24 24 0 0 1 24 24M48 104a24 24 0 1 0 24 24a24 24 0 0 0-24-24m160 0a24 24 0 1 0 24 24a24 24 0 0 0-24-24" opacity="0.2"/><path d="M128 96a32 32 0 1 0 32 32a32 32 0 0 0-32-32m0 48a16 16 0 1 1 16-16a16 16 0 0 1-16 16M48 96a32 32 0 1 0 32 32a32 32 0 0 0-32-32m0 48a16 16 0 1 1 16-16a16 16 0 0 1-16 16m160-48a32 32 0 1 0 32 32a32 32 0 0 0-32-32m0 48a16 16 0 1 1 16-16a16 16 0 0 1-16 16"/></g></svg>')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Customized Offers',
                style: GoogleFonts.leagueSpartan(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A5A5A)),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: SizedBox(
                  height: 159,
                  width: double.infinity,
                  child: Stack(children: [
                    Container(
                      color: Colors.white,
                    ),
                    Center(
                      child: Swiper(
                        itemCount: slider.length,
                        itemBuilder: (context, index) {
                          return Image.asset('${slider[index]}');
                        },
                        itemHeight: 159,
                        itemWidth: 282,
                        viewportFraction: 0.8,
                        scale: 0.9,
                        loop: false,
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
