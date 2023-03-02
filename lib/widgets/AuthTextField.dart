import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextField extends StatelessWidget {
  final String field;
  const AuthTextField({
    super.key,
    required this.field,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: field,
        hintStyle: GoogleFonts.poppins(
          fontSize: 12.sp,
          color: const Color(0xFFB2B2B2),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFEAEAF5),
          ),
        ),
        constraints: BoxConstraints(
          maxWidth: 262.42.w,
        ),
      ),
    );
  }
}
