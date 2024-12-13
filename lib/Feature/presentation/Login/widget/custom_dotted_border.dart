import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';

class CustomDottedBorder extends StatelessWidget {
  const CustomDottedBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return DottedBorder(
      color: Colors.white, // لون النقاط
      strokeWidth: 3, // سماكة النقاط
      dashPattern: const [10, 4], // نمط النقاط والمسافات
      borderType: BorderType.Circle, // تحديد الشكل كدائرة
      radius: Radius.circular(islandScape ? 50.r : 90.r),
      padding: EdgeInsets.all(60.r), // مسافة بين الدائرة والصورة
      child: SizedBox(
        height: islandScape ? 60.h : 100.h,
        width: islandScape ? 60.w : 100.w,
        child: Image.asset(
          Assets.key,
          fit: BoxFit.contain, // لتغطية المساحة المتاحة بالكامل
        ),
      ),
    );
  }
}
