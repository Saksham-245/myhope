import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myhope/screens/log_in.dart';
import 'package:myhope/screens/signup_screen_2.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _firstName = '';
  String _middleName = '';
  String _lastName = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 220.w),
                child: InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogIn(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Back to Login',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: GoogleFonts.nunito().fontFamily,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                    'First Name',
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
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter first name';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _firstName = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 20.w,
                      left: 10.w,
                      right: 10.w,
                      bottom: 15.w,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 12.sp,
                      fontFamily: GoogleFonts.quicksand().fontFamily,
                      fontWeight: FontWeight.w700,
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
                    'Middle Name',
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
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      _middleName = value.trim();
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 20.w,
                      left: 10.w,
                      right: 10.w,
                      bottom: 15.w,
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
                    'Last Name',
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
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter last name';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _lastName = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    errorStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 12.sp,
                      fontFamily: GoogleFonts.quicksand().fontFamily,
                      fontWeight: FontWeight.w700,
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 20.w,
                      left: 10.w,
                      right: 10.w,
                      bottom: 15.w,
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
                                  fontFamily:
                                      GoogleFonts.quicksand().fontFamily,
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
                                  fontFamily:
                                      GoogleFonts.quicksand().fontFamily,
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
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFF96A5F2)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    backgroundColor: const Color(0xFF96A5F2),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen2(
                            firstName: _firstName,
                            middleName: _middleName,
                            lastName: _lastName,
                          ),
                        ),
                      );
                    }
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
              ),
              SizedBox(
                height: 60.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
