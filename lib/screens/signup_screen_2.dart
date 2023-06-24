import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:myhope/utils/utils.dart';

// ignore: must_be_immutable
class SignUpScreen2 extends StatefulWidget {
  String firstName;
  String middleName;
  String lastName;

  SignUpScreen2({
    super.key,
    required this.firstName,
    required this.middleName,
    required this.lastName,
  });

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  final _bio = TextEditingController();
  final _occupation = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _dob = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _hobbies = TextEditingController();
  final _country = TextEditingController();
  final _gender = TextEditingController();
  final _photo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 55.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Bio',
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
                padding: EdgeInsets.only(left: 20.w),
                child: Container(
                  width: 330.w,
                  height: 96.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFF8B8B8B)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: TextFormField(
                    controller: _bio,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Occupation',
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
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 220.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF8B8B8B)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextFormField(
                        controller: _occupation,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 29.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Email',
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
                padding: EdgeInsets.only(left: 20.w),
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFF8B8B8B)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Password',
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
                padding: EdgeInsets.only(left: 20.w),
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFF8B8B8B)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'DOB',
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
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 270.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF8B8B8B)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextFormField(
                        controller: _dob,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 39.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Phone Number',
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
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 200.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF8B8B8B)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextFormField(
                        controller: _phoneNumber,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 41.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hobbies',
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
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 240.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF8B8B8B)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextFormField(
                        controller: _hobbies,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Photo',
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
                  Padding(
                    padding: EdgeInsets.only(left: 50.w),
                    child: Container(
                      width: 100.w,
                      height: 110.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF535148)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Country',
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
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 240.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF8B8B8B)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextFormField(
                        controller: _country,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Gender',
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
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Container(
                      width: 245.w,
                      height: 50.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFF8B8B8B)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextFormField(
                        controller: _gender,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 0.50, color: Color(0xFF96A5F2)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    backgroundColor: const Color(0xFFFF9BC4),
                  ),
                  onPressed: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Home(
                    //       email: _email.text,
                    //     ),
                    //   ),
                    // );

                    signUp(
                      widget.firstName,
                      widget.middleName,
                      widget.lastName,
                      _bio.text,
                      _occupation.text,
                      _email.text,
                      _password.text,
                      _dob.text,
                      _phoneNumber.text,
                      _hobbies.text,
                      _photo.text,
                      _country.text,
                      _gender.text,
                    );
                  },
                  child: Text(
                    'GO!',
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
      ),
    );
  }
}
