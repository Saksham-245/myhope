import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:myhope/screens/signup_screen.dart';
import 'package:myhope/utils/utils.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> with TickerProviderStateMixin {
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String message = '';

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
                  SizedBox(height: 65.h),
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
                      height: 240.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Container(
                              width: 200.w,
                              color: Colors.white,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !value.contains('@')) {
                                    return 'Please enter email';
                                  }
                                  return null;
                                },
                                controller: _mailController,
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
                              child: TextFormField(
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                                controller: _passwordController,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Don't have an Account? SignUp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF8B8B8B),
                        fontSize: 12.sp,
                        fontFamily: GoogleFonts.quicksand().fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
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
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          login(
                            _mailController.text,
                            _passwordController.text,
                          )
                              .then(
                            (value) => {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  duration: const Duration(seconds: 5),
                                  content: Text(value),
                                ),
                              ),
                            },
                          )
                              // ignore: body_might_complete_normally_catch_error
                              .catchError((error) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 5),
                                content: Text('Something went Wrong!'),
                              ),
                            );
                          });
                        }
                      },
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
                  Lottie.asset(
                    'assets/images/fire.json',
                    width: 94.w,
                    height: 103.h,
                    repeat: true,
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
