import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    this.labelText,
    required this.obscureText,
    this.icon,
    this.onIconPressed,
    this.color,
    this.prefixIcon,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.validator,
  });

  final bool obscureText;
  final String? labelText;
  final IconData? icon;
  final VoidCallback? onIconPressed;
  final Color? color;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return SizedBox(
      width: isLandScape ? screenWidth * .5 : screenWidth * .8,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        obscuringCharacter: '*',
        keyboardType: keyboardType ?? TextInputType.text,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          suffixIcon: onIconPressed != null
              ? IconButton(
                  icon: Icon(icon, color: color ?? kMyGray),
                  onPressed: onIconPressed,
                )
              : (icon != null ? Icon(icon, color: color ?? kMyGray) : null),
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, color: color ?? kMyGray)
              : null,
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
