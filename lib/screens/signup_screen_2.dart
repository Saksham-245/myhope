import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myhope/screens/home.dart';
import 'package:myhope/screens/log_in.dart';

import 'package:myhope/utils/utils.dart';

List<String> _countryList = [
  'India',
  'Japan',
];

List<String> _genderList = ['Male', 'Female'];

List<String> _occupationList = [
  'Software Developer',
  'Accountant',
  'Quality Assurance',
  'Tester',
];

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
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _dob = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _hobbies = TextEditingController();
  late String _selectedCountry;
  late String _selectedGender;
  late String _selectOccupation;
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
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogIn(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
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
                      child: DropdownButtonFormField(
                        onChanged: (newValue) {
                          setState(() {
                            _selectOccupation = newValue!;
                          });
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        items: _occupationList.map((String occupation) {
                          return DropdownMenuItem<String>(
                            value: occupation,
                            child: Text(occupation),
                          );
                        }).toList(),
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
                    keyboardType: TextInputType.emailAddress,
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
                    obscureText: true,
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
                        keyboardType: TextInputType.phone,
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
                      child: DropdownButtonFormField(
                        onChanged: (newValue) {
                          setState(() {
                            _selectedCountry = newValue!;
                          });
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        items: _countryList.map((String country) {
                          return DropdownMenuItem<String>(
                            value: country,
                            child: Text(country),
                          );
                        }).toList(),
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
                      child: DropdownButtonFormField(
                        onChanged: (newValue) {
                          setState(() {
                            _selectedGender = newValue!;
                          });
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                        items: _genderList.map((String gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 0.50, color: Color(0xFF96A5F2)),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      backgroundColor: const Color(0xFF96A5F2),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Previous',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: GoogleFonts.zenMaruGothic().fontFamily,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  ElevatedButton(
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
                        _selectOccupation,
                        _email.text,
                        _password.text,
                        _dob.text,
                        _phoneNumber.text,
                        _hobbies.text,
                        _photo.text,
                        _selectedCountry,
                        _selectedGender,
                      ).then((response) {
                        if (response['statusCode'] == 201) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Success'),
                                content:
                                    Text(response['data']['message'] ?? ''),
                              );
                            },
                          );
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const Home()),
                            );
                          });
                        } else if (response['statusCode'] == 400) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Failed'),
                                content:
                                    Text(response['data']['message'] ?? ''),
                              );
                            },
                          );
                        }
                      });
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
                ],
              ),
              SizedBox(
                height: 25.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
