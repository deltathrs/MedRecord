import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AuthTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  bool obscureText;
  final Icon? prefixIcon;
  final Icon? visibleSuffixIcon; // Icon when text is visible
  final Icon? hiddenSuffixIcon; // Icon when text is obscured
  final TextInputType inputType;
  final String? Function(String)? validator;
  final bool enableToggleObscureText;

  AuthTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.inputType,
    this.prefixIcon,
    this.visibleSuffixIcon,
    this.hiddenSuffixIcon,
    this.validator,
    this.enableToggleObscureText = false,
  }) : super(key: key);

  @override
  _AuthTextFieldState createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  String? _errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 320.w,
          height: 42.h,
          child: TextField(
            controller: widget.controller,
            obscureText: widget.obscureText,
            keyboardType: widget.inputType,
            onChanged: (value) {
              if (widget.validator != null) {
                setState(() {
                  _errorText = widget.validator!(value);
                });
              }
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 6.h),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.lato(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
              prefixIcon: widget.prefixIcon,
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
        ),
        if (_errorText != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.h),
            child: Text(
              _errorText!,
              style: TextStyle(color: Colors.red, fontSize: 12.0.sp),
            ),
          ),
      ],
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
