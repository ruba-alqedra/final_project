import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, 'LoginScreen'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF003AFC),
                  Color(0xFF6589FF),
                ],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 292.h,
                  width: 176.w,
                ),
                Image.asset(
                  "assets/images/palestine_bird.png",
                ),
                SizedBox(
                  height: 27.h,
                ),
                Text(
                  'ديوان رئيس الوزراء',
                  style: TextStyle(
                    fontSize: 31.sp,
                    color: Colors.white,
                    fontFamily: 'Sana',
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
