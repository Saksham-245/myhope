import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myhope/screens/home.dart';
import 'package:myhope/screens/log_in.dart';

import 'package:myhope/utils/utils.dart';
import 'package:myhope/widgets/field_text.dart';

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
  String dob = '';
  String phoneNumber = '';
  String hobbies = '';
  String bio = '';
  String email = '';
  String password = '';
  late String _selectedCountry;
  late String _selectedGender;
  late String _selectOccupation;
  final _photo = TextEditingController();

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
                height: 40.h,
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
                    onChanged: (value) {
                      setState(() {
                        bio = value.trim();
                      });
                    },
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
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 10.w,
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
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: FieldText(
                  secureText: false,
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return 'Please enter your email';
                    } else if (!p0.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      email = value.trim();
                    });
                  },
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
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: FieldText(
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return 'Please enter your password';
                    } else if (p0.length < 6) {
                      return 'Password must be at least 6 characters';
                    } else if (p0 == 'password') {
                      return 'Password cannot be password';
                    }
                    return null;
                  },
                  secureText: true,
                  onChanged: (p0) {
                    setState(() {
                      password = p0.trim();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w, right: 20.w),
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
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                ),
                child: FieldText(
                    secureText: false,
                    validator: (p0) {
                      if (p0 == ' ' || p0!.isEmpty) {
                        return 'Please enter your date of birth';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        dob = value.trim();
                      });
                    }),
              ),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 20.w),
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
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 20.w,
                ),
                child: FieldText(
                    secureText: false,
                    validator: (p0) {
                      if (p0 == ' ' || p0!.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        phoneNumber = value.trim();
                      });
                    }),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 20.w),
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
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 20.w,
                ),
                child: FieldText(
                    secureText: false,
                    validator: (p0) {},
                    onChanged: (value) {
                      setState(() {
                        hobbies = value.trim();
                      });
                    }),
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
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 20.w),
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
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 20.w,
                ),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 10.w,
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
                  items: _countryList.map((String country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == '' || value!.isEmpty) {
                      return 'Please select a value';
                    }
                    return null;
                  },
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCountry = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 20.w),
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
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                  right: 20.w,
                ),
                child: DropdownButtonFormField(
                  validator: (value) {
                    if (value == '' || value!.isEmpty) {
                      return 'Please select a value';
                    }
                    return null;
                  },
                  onChanged: (newValue) {
                    setState(() {
                      _selectedGender = newValue!;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding: EdgeInsets.only(
                      top: 10.w,
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
                  items: _genderList.map((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 30.h,
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
                      if (_formKey.currentState!.validate()) {
                        signUp(
                          widget.firstName,
                          widget.middleName,
                          widget.lastName,
                          _bio.text,
                          _selectOccupation,
                          email,
                          password,
                          dob,
                          hobbies,
                          phoneNumber,
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
                                  content: Text(
                                    response['data']['message'],
                                  ),
                                );
                              },
                            );
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()),
                              );
                            });
                          } else if (response['statusCode'] == 400) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Failed'),
                                  content: Text(
                                    (response['data']['message']),
                                  ),
                                );
                              },
                            );
                          }
                        });
                      }
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
