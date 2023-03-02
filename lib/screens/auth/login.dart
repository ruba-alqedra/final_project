import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/AuthButton.dart';
import '../../widgets/AuthTextField.dart';
import '../../widgets/CircularIcon.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String id = 'LoginScreen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                Container(
                  color: const Color(0xFFF7F6FF),
                ),
                Container(
                  width: 473.w,
                  height: 359.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF6589FF),
                        Color(0xFF003AFC),
                      ],
                      begin: AlignmentDirectional.centerStart,
                      end: AlignmentDirectional.centerEnd,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.r),
                      bottomRight: Radius.circular(130.r),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 37.h,
                    ),
                    Image.asset('assets/images/palestine_bird.png'),
                    Center(
                      child: Text(
                        'ديوان رئيس الورزراء',
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontFamily: 'Sana',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(59.r),
                        ),
                      ),
                      height: 630.h,
                      width: 367.w,
                      child: Padding(
                        padding: EdgeInsets.only(top: 66.h),
                        child: Column(
                          children: [
                            Container(
                              height: 35.h,
                              width: 265.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFEAEAF5),
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  22.r,
                                ),
                              ),
                              child: TabBar(
                                labelStyle: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                                unselectedLabelStyle: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                ),
                                controller: _tabController,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    22.r,
                                  ),
                                  color: const Color(0xFF003AFC),
                                ),
                                labelColor: Colors.white,
                                unselectedLabelColor: const Color(0xFF003AFC),
                                tabs: const [
                                  Tab(
                                    text: 'Login',
                                  ),
                                  Tab(
                                    text: 'Sign Up',
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 45.h,
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 22.h,
                                      ),
                                      const AuthTextField(
                                        field: 'Enter email or username',
                                      ),
                                      SizedBox(
                                        height: 22.h,
                                      ),
                                      const AuthTextField(
                                        field: 'Password',
                                      ),
                                      SizedBox(
                                        height: 62.h,
                                      ),
                                      AuthButton(
                                        text: 'Login',
                                        fun: () {
                                          Navigator.pushNamed(
                                              context, 'HomeScreen');
                                        },
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const AuthTextField(
                                        field: 'Enter email or username',
                                      ),
                                      SizedBox(
                                        height: 22.h,
                                      ),
                                      const AuthTextField(
                                        field: 'Password',
                                      ),
                                      SizedBox(
                                        height: 22.h,
                                      ),
                                      const AuthTextField(
                                        field: 'Confirm password',
                                      ),
                                      SizedBox(
                                        height: 62.h,
                                      ),
                                      AuthButton(
                                        text: 'Sign up',
                                        fun: () => Navigator.pushNamed(
                                            context, 'HomeScreen'),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Text(
                                        'OR',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: const Color(0xFFA8A7A7),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 81.w,
                                        ),
                                        child: Row(
                                          children: [
                                            const CircularIcon(
                                                imageName: 'facebook'),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            const CircularIcon(
                                              imageName: 'twitter',
                                            ),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            const CircularIcon(
                                              imageName: 'google',
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
