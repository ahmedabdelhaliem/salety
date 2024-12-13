import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';

class CustomLogoSplash extends StatelessWidget {
  const CustomLogoSplash({super.key, this.color1, this.color2, this.color3});
  final Color? color1;
  final Color? color2;
  final Color? color3;

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Stack(
      alignment: Alignment.center,
      children: [
        // الحلقة الخارجية
        Container(
          width: islandScape ? 180.w : 250.w, // عرض الحلقة الخارجية
          height: islandScape ? 180.h : 250.h, // ارتفاع الحلقة الخارجية
          decoration: BoxDecoration(
            color: color1,
            shape: BoxShape.circle, // شكل دائري
          ),
        ),
        // الحلقة الوسطى
        Container(
          width: islandScape ? 150.w : 200.w,
          height: islandScape ? 150.h : 200.h, // ارتفاع الحلقة الوسطى
          decoration: BoxDecoration(
            color: color2,
            shape: BoxShape.circle, // شكل دائري
          ),
        ),
        // الحلقة الداخلية
        Container(
          width: islandScape ? 120.w : 150.w, // عرض الحلقة الداخلية
          height: islandScape ? 120.h : 150.h, // ارتفاع الحلقة الداخلية
          decoration: BoxDecoration(
            color: color3,
            shape: BoxShape.circle, // شكل دائري
          ),
        ),
        // الصورة فوق الخلفية
        Image.asset(
          Assets.shop,
          width: islandScape ? 70.w : 100.w,
          height: islandScape ? 70.h : 100.h,
          fit: BoxFit.contain, // تغطي الصورة المساحة
        ),
      ],
    );
  }
}
