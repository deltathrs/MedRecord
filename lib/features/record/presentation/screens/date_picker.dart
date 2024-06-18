import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DatePickerDropdown extends StatefulWidget {
  const DatePickerDropdown({super.key});

  @override
  State<DatePickerDropdown> createState() => _DatePickerDropdownState();
}

class _DatePickerDropdownState extends State<DatePickerDropdown> {
  DateTime selectedDate = DateTime.now();
  final DateFormat formatter = DateFormat('EEE, dd MMM yyyy');

  // Generate a list of dates (e.g., for the next 30 days)
  List<DateTime> generateDateList() {
    return List<DateTime>.generate(
        30, (i) => DateTime.now().add(Duration(days: i)));
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> dateList = generateDateList();
    String selectedDateFormatted = formatter.format(selectedDate);

    return Center(
      child: DropdownButton<String>(
        iconDisabledColor: Color(0xFF389AFF),
        iconEnabledColor: Color(0xFF389AFF),
        value: selectedDateFormatted,
        onChanged: (String? newValue) {
          setState(() {
            selectedDate = dateList
                .firstWhere((date) => formatter.format(date) == newValue);
          });
        },
        items: dateList.map<DropdownMenuItem<String>>((DateTime date) {
          return DropdownMenuItem<String>(
            value: formatter.format(date),
            child: Text(
              formatter.format(date),
              style: GoogleFonts.lato(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF389AFF)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
