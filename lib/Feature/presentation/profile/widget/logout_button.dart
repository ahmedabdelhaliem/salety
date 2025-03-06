import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/styles.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
    this.icon,
    required this.text,
    required this.color,
  });
  final IconData? icon;
  final String text;
  final Color color;

  @override
  Widget build(
    BuildContext context,
  ) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      width: isLandscape ? 90.w : 120.w,
      height: isLandscape ? 90.h : 120.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: isLandscape ? 20.w : 60.w,
            height: isLandscape ? 20.w : 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white.withOpacity(.3),
            ),
            child: Icon(
              icon,
            ),
          ),
          SizedBox(
            height: isLandscape ? 1.h : 5.h,
          ),
          Text(
            text,
            style: Styles.textStyle12,
          ),
        ],
      ),
    );
  }
}
