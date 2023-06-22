import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myhope/screens/signup_screen_2.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Text(
                'We are almost there!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFE66098),
                  fontSize: 24.sp,
                  fontFamily: GoogleFonts.quicksand().fontFamily,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Center(
              child: Image.asset(
                'assets/images/user.png',
                width: 115.w,
                height: 141.h,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Nationality',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xFF535148),
                    fontSize: 16.sp,
                    fontFamily: GoogleFonts.quicksand().fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Container(
                width: 340.w,
                height: 50.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF8B8B8B)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 31.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Language',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xFF535148),
                    fontSize: 16.sp,
                    fontFamily: GoogleFonts.quicksand().fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Container(
                width: 340.w,
                height: 50.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF8B8B8B)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 31.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Residence',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: const Color(0xFF535148),
                    fontSize: 16.sp,
                    fontFamily: GoogleFonts.quicksand().fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Container(
                width: 340.w,
                height: 50.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF8B8B8B)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 0.50,
                              color: Color(0xFF535148),
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      Column(
                        children: [
                          Opacity(
                            opacity: 0.50,
                            child: Text(
                              'Upload',
                              style: TextStyle(
                                color: const Color(0xFF535148),
                                fontSize: 16.sp,
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Opacity(
                            opacity: 0.50,
                            child: Text(
                              'Later',
                              style: TextStyle(
                                color: const Color(0xFF535148),
                                fontSize: 16.sp,
                                fontFamily: GoogleFonts.quicksand().fontFamily,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                  Image.asset(
                    'assets/images/bear.png',
                    width: 123.w,
                    height: 210.h,
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF96A5F2)),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  backgroundColor: const Color(0xFF96A5F2),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen2(),
                    ),
                  );
                },
                child: Text(
                  'Confirmation',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: GoogleFonts.zenMaruGothic().fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
