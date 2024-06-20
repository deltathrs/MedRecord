import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:med_record/features/authentication/presentation/screens/register.dart';
import 'package:med_record/features/authentication/presentation/widgets/auth_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/img/account/login_background.png',
                      width: 300.w,
                      height: 179.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // AccountTextField(
                    //   controller: emailController,
                    //   hintText: 'Email Address',
                    //   obscureText: false,
                    //   inputType: TextInputType.emailAddress,
                    //   validator: validateEmail,
                    // ),
                    AuthTextField(
                      controller: emailController,
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                        size: 21.w,
                      ),
                      hintText: 'Email Address',
                      obscureText: false,
                      inputType: TextInputType.emailAddress,
                      validator: validateEmail,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    AuthTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                      inputType: TextInputType.text,
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 21.w,
                        color: Colors.grey,
                      ),
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
                      enableToggleObscureText: true,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: 320.w,
                      height: 43.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF389AFF),
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      child: Center(
                          child: Text(
                        'Login',
                        style: GoogleFonts.leagueSpartan(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 131.w,
                          height: 1.h,
                          color: Colors.grey,
                        ),
                        Text(
                          '  or  ',
                          style: GoogleFonts.fredoka(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF585858)),
                        ),
                        Container(
                          width: 131.w,
                          height: 1.h,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    socmedLoginBox('assets/img/account/google_logo.png',
                        'Sign in with Google'),
                    SizedBox(
                      height: 20.h,
                    ),
                    socmedLoginBox('assets/img/account/facebook_logo.jpg',
                        'Sign in with Facebook'),
                    SizedBox(
                      height: 20.h,
                    ),
                    socmedLoginBox('assets/img/account/apple_logo.png',
                        'Sign in with Apple'),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Don't have an account? ",
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
                                    builder: (context) => RegisterScreen()));
                          },
                          child: Text(
                            'Sign up',
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
            ),
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

  Widget socmedLoginBox(String image, String title) {
    return Container(
      width: 320.w,
      height: 42.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 26.w,
            height: 26.h,
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            title,
            style: GoogleFonts.lato(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: Color(0xFFA6A6A6)),
          ),
        ],
      ),
    );
  }
}
