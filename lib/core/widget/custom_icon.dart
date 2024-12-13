import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.color,
    required this.image,
    this.height,
    this.width,
  });
  final Color color;
  final String image;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return GestureDetector(
      child: Container(
        height: isLandscape ? 50.h : 40.h,
        width: isLandscape ? 30.w : 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r), // حواف دائرية للحاوية
          color: color,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.r),
          child: Image.asset(
            // color: Colors.white,
            image,
            fit: BoxFit.contain,
            // height: 50.h, // احتواء الصورة بالكامل داخل الحاوية
          ),
        ),
      ),
    );
  }
}
