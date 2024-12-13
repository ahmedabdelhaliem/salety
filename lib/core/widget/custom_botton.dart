import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  final String? image;
  final double? width;
  final double? height;
  final Color? color;
  final Color? textColor; // لون النص المتغير

  const CustomButton({
    super.key,
    required this.name,
    required this.onPressed,
    this.image,
    this.width,
    this.height,
    this.color,
    this.textColor = Colors.white, // اللون الافتراضي للنص
  });

  @override
  Widget build(BuildContext context) {
    // تحديد إذا كانت الشاشة في الوضع الأفقي
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return SizedBox(
      height: height ??
          MediaQuery.of(context).size.height *
              (isLandscape ? 0.175 : 0.075), // قيمة افتراضية للارتفاع
      width: width ??
          MediaQuery.of(context).size.width *
              (isLandscape ? .5 : 0.8), // العرض الافتراضي إذا لم يتم تمريره
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color, // لون الخلفية
          padding: EdgeInsets.symmetric(
            vertical: isLandscape
                ? 14.h
                : 12.h, // تعديل المسافات الداخلية بناءً على الاتجاه
            horizontal: isLandscape ? 24.w : 16.w,
          ), // المسافات الداخلية (Padding)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r), // الحواف الدائرية
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: isLandscape
                  ? Styles.textStyle14.copyWith(
                      color: textColor, // لون النص المتغير
                    )
                  : Styles.textStyle18.copyWith(
                      color: textColor, // لون النص المتغير
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
