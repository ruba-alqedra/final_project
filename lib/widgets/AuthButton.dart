import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() fun;
  const AuthButton({
    super.key,
    required this.text,
    required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 264.w,
      height: 48.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF6589FF),
            Color(0xFF003AFC),
          ],
          begin: Alignment.centerLeft,
          end: FractionalOffset.centerRight,
        ),
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: TextButton(
        onPressed: fun,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
