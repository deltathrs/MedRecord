import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BiodataBox extends StatefulWidget {
  BiodataBox({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.inputType,
    this.visibleSuffixIcon,
    this.hiddenSuffixIcon,
    this.validator,
    this.enableToggleObscureText = false,
  });

  final TextEditingController controller;
  final String hintText;
  bool obscureText;
  final Icon? visibleSuffixIcon; // Icon when text is visible
  final Icon? hiddenSuffixIcon; // Icon when text is obscured
  final TextInputType inputType;
  final String? Function(String)? validator;
  final bool enableToggleObscureText;

  @override
  State<BiodataBox> createState() => _BiodataBoxState();
}

class _BiodataBoxState extends State<BiodataBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 42.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: Colors.grey)),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType: widget.inputType,
        style: GoogleFonts.lato(
            fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.w),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.lato(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFFA6A6A6)),
          suffixIcon: widget.enableToggleObscureText
              ? IconButton(
                  icon: widget.obscureText
                      ? widget.hiddenSuffixIcon!
                      : widget.visibleSuffixIcon!,
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}

// Validator functions
String? validateUsername(String value) {
  if (value.contains(' ')) {
    return 'Username cannot contain spaces';
  }
  return null;
}

String? validateEmail(String value) {
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return 'Email format is not valid';
  }
  return null;
}

String? validateFullName(String value) {
  if (value.contains(RegExp(r'[0-9]'))) {
    return 'Full Name cannot contain numerical value';
  }
  return null;
}

String? validateTelephoneNumber(String value) {
  if (value.length < 10 ||
      value.length > 12 ||
      !value.startsWith('08') ||
      !RegExp(r'^\d+$').hasMatch(value)) {
    return 'Telephone number format is not valid';
  }
  return null;
}
