import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_record/features/authentication/presentation/screens/login.dart';
import 'package:med_record/features/authentication/presentation/widgets/biodata_box.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/img/account/register_background.png',
                      width: 316.w,
                      height: 203.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 152.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: TextField(
                            controller: firstNameController,
                            style: GoogleFonts.lato(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.w),
                                border: InputBorder.none,
                                hintText: 'First Name',
                                hintStyle: GoogleFonts.lato(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA6A6A6))),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 152.w,
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: TextField(
                            controller: lastNameController,
                            style: GoogleFonts.lato(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.w),
                                border: InputBorder.none,
                                hintText: 'Last Name',
                                hintStyle: GoogleFonts.lato(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFA6A6A6))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BiodataBox(
                      controller: usernameController,
                      hintText: 'Username',
                      obscureText: false,
                      inputType: TextInputType.name,
                      validator: validateUsername,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BiodataBox(
                      controller: emailAddressController,
                      hintText: 'Email Address',
                      obscureText: false,
                      inputType: TextInputType.emailAddress,
                      validator: validateEmail,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BiodataBox(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                      inputType: TextInputType.text,
                      visibleSuffixIcon: Icon(
                        Icons.visibility,
                        size: 24.w,
                        color: Colors.grey,
                      ),
                      hiddenSuffixIcon: Icon(
                        Icons.visibility_off,
                        size: 24.w,
                        color: Colors.grey,
                      ),
                      enableToggleObscureText: true,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BiodataBox(
                      controller: confirmPasswordController,
                      hintText: 'Confirm Password',
                      obscureText: true,
                      inputType: TextInputType.text,
                      enableToggleObscureText: true,
                      visibleSuffixIcon: Icon(
                        Icons.visibility,
                        size: 21.w,
                        color: Colors.grey,
                      ),
                      hiddenSuffixIcon: Icon(
                        Icons.visibility_off,
                        size: 21.w,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Container(
                      width: 320.w,
                      height: 43.h,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      child: Center(
                        child: Text(
                          'Register',
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Already have an account? ',
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.leagueSpartan(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 84.h,
        color: Colors.blue,
        child: Center(
          child: Text(
            '©2023 | MedRecord | All Rights Reserved',
            style: GoogleFonts.baiJamjuree(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
