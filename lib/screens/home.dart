import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F6FF),
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        actions: const [
          Icon(
            Icons.circle,
            size: 44,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 181.w / 81.h,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.w,
            ),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
