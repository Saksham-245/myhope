import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: 397.w,
          height: 859.h,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 96.h),
                  Image.asset(
                    'assets/images/Logo.png',
                  ),
                  SizedBox(height: 35.h),
                  Image.asset(
                    'assets/images/profile.png',
                    width: 120.w,
                    height: 120.h,
                  ),
                  SizedBox(height: 55.h),
                  Opacity(
                    opacity: 0.50,
                    child: Container(
                      width: 260.w,
                      height: 230.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 200.w,
                            color: Colors.white,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'mail',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 19,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            width: 200.w,
                            color: Colors.white,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'password',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 19,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 25.h),
                          Text(
                            'If you forgot password...',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF8B8B8B),
                              fontSize: 12.sp,
                              fontFamily: GoogleFonts.quicksand().fontFamily,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: 160.w,
                    height: 36.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF85DEF3),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 0.50,
                            color: Color(0xFF85DEF3),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: GoogleFonts.quicksand().fontFamily,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SvgPicture.asset(
                    'assets/images/fire.svg',
                    width: 94.w,
                    height: 103.h,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
