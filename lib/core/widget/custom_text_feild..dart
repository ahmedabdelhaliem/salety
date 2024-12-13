import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild(
      {super.key,
      this.labelText,
      required this.obscureText,
      this.icon,
      this.color,
      this.prefixIcon});
  final bool obscureText;
  final String? labelText;
  final IconData? icon;
  final Color? color;
  final IconData? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return SizedBox(
      width: islandScape ? screenWidth * .5 : screenWidth * .8,
      child: TextField(
        obscureText: obscureText,
        obscuringCharacter: '*',
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: color ?? kMyGray,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: color ?? kMyGray,
          ),
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 15.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
