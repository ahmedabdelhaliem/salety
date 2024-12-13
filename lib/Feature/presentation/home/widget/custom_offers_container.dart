import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomOffersContainer extends StatelessWidget {
  const CustomOffersContainer({
    super.key,
    required this.color,
    required this.text,
    required this.text1,
    this.text2 = "",
  });
  final Color color;
  final String text;
  final String text1;
  final String? text2;

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      height: isLandscape ? 100.h : 120.h,
      width: isLandscape ? 50.w : 100.w,
      margin: EdgeInsets.all(5.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: isLandscape ? Styles.textStyle14 : Styles.textStyle16,
          ),
          Text(
            text1,
            style: isLandscape ? Styles.textStyle16 : Styles.textStyle20,
          ),
          Text(text2!), // عرض text2 فقط إذا لم تكن فارغة
        ],
      ),
    );
  }
}
