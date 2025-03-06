import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/styles.dart';

class TextFeildPhone extends StatelessWidget {
  const TextFeildPhone({
    super.key,
    this.labelText,
    required this.obscureText,
    this.suffixIcon,
    this.controller,
  });

  final bool obscureText;
  final String? labelText;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  String generateCountryFlag() {
    String countryCode = 'eg';
    String flag = countryCode.toUpperCase().replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) =>
              String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
        );
    return flag;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final TextEditingController effectiveController =
        controller ?? TextEditingController();

    final FocusNode focusNode = FocusNode(); // ✅ تحسين تجربة الإدخال

    return SizedBox(
      width: islandScape ? screenWidth * .5 : screenWidth * .8,
      child: TextField(
        controller: effectiveController,
        focusNode: focusNode, // ✅ استخدام FocusNode
        obscureText: obscureText,
        keyboardType: TextInputType.number, // ✅ تقييد الإدخال ليكون أرقام فقط
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly
        ], // ✅ منع الأحرف
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          prefix: Padding(
            padding: const EdgeInsets.only(
                right: 8.0), // ✅ تحسين محاذاة الكود الدولي
            child: Text(
              '${generateCountryFlag()} +20 ',
              style: Styles.textStyle16.copyWith(letterSpacing: .2),
            ),
          ),
        ),
      ),
    );
  }
}
