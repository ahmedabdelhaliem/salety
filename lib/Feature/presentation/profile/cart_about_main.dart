import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';

class CartAboutMain extends StatelessWidget {
  const CartAboutMain({super.key, this.text = '', this.icon});
  final String? text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: kMyRed,
          ),
          Text(text!),
        ],
      ),
    );
  }
}
