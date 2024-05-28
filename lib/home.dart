import 'package:flutter/material.dart';
import 'package:med_record/features/authentication/presentation/screens/profile.dart';
import 'package:med_record/features/dashboard/presentation/screens/dashboard.dart';
import 'package:med_record/features/doctor/presentation/screens/doctor.dart';
import 'package:med_record/features/record/presentation/screens/record.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> widgetList = const [
    DashboardScreen(),
    RecordScreen(),
    DoctorScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: IndexedStack(
        children: widgetList,
        index: index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // Home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // Record
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_rounded), label: 'Record'),
          //  Doctor
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_convenience_store_rounded,
              ),
              label: 'Doctor'),
          //Profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFF5A5A5A),
        selectedItemColor: Colors.blue,
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
