import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';

class RowSocialMedia extends StatelessWidget {
  const RowSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Container(
            width: 60.w,
            height: 40.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red, // لون الحدود الأحمر
                // width: 2, // سماكة الحدود
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Image.asset(
              Assets.google,
            ),
          ),
          const Spacer(),
          Container(
            width: 60.w,
            height: 40.h,
            padding: EdgeInsets.all(2.r),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue, // لون الحدود الأحمر
                // width: 2, // سماكة الحدود
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Image.asset(
              Assets.facebook,
            ),
          ),
        ],
      ),
    );
  }
}
