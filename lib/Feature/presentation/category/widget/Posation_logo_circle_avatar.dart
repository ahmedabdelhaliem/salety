import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';

class PostionLogoCircleAvatar extends StatelessWidget {
  const PostionLogoCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Positioned(
      left: islandScape ? 15.w : 13.w,
      right: 13.w,
      bottom: 20.h,
      // يمكنك تعديل هذه القيمة لجعل الجزء السفلي في مكان معين
      child: CircleAvatar(
        radius: 30.r,
        backgroundColor: Colors.white, // لون خلفية الدائرة

        child: CircleAvatar(
          radius: 25.r,
          // نصف قطر الدائرة
          backgroundColor:
              const Color.fromARGB(255, 144, 208, 129), // لون خلفية الدائرة
          child: Container(
            padding: EdgeInsets.all(5.r), // لإضافة مسافة حول النص
            child: Image.asset(
              Assets.logo,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
