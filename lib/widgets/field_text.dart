import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class FieldText extends StatelessWidget {
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final bool secureText;
  const FieldText({
    Key? key,
    required this.onChanged,
    required this.validator,
    required this.secureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secureText,
      validator: validator,
      onChanged: onChanged,
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
    );
  }
}
