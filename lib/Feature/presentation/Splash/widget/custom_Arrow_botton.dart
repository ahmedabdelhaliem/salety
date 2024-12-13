import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomArrowRighetBotton extends StatelessWidget {
  const CustomArrowRighetBotton({
    super.key,
    this.onPressed,
    this.color,
  });
  final void Function()? onPressed;

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(40.r),
              color: color),
          child: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ))),
    );
  }
}
