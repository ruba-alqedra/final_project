import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularIcon extends StatelessWidget {
  final String imageName;
  const CircularIcon({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      width: 54.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: const Color(0xFFEEEEF6),
        ),
        borderRadius: BorderRadius.circular(54.r),
      ),
      child: Image.asset(
        'assets/images/${imageName}.png',
      ),
    );
  }
}
