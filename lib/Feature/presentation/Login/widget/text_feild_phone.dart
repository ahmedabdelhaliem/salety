import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/styles.dart';

class TextFeildPhone extends StatelessWidget {
  const TextFeildPhone({
    super.key,
    this.labelText,
    required this.obscureText,
    this.suffixIcon,
  });
  final bool obscureText;
  final String? labelText;
  final Widget? suffixIcon;

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

    return SizedBox(
      width: islandScape ? screenWidth * .5 : screenWidth * .8,
      child: TextField(
        obscureText: obscureText,
        keyboardType: TextInputType.phone, // استخدام نوع الهاتف
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          prefix: Text(
            '${generateCountryFlag()}+20', // عرض علم الدولة
            style: Styles.textStyle16.copyWith(letterSpacing: .2),
            textAlign: TextAlign.center,
            // حجم العلم
          ),
        ),
      ),
    );
  }
}
