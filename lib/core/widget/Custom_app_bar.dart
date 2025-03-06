import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.text = '', this.textAlign = TextAlign.center});

  final String? text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: isLandscape ? 15.w : 16.0.w,
          vertical: isLandscape ? 10.h : 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // أيقونة الرجوع
          GestureDetector(
            child: Container(
              height: isLandscape ? 40.h : 40.h,
              width: isLandscape ? 30.w : 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), // حواف دائرية للحاوية
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(5), // حواف دائرية للصورة أيضًا
                child: Image.asset(
                  Assets.arrow,
                  height: isLandscape ? 60.h : 50.h,
                  width: isLandscape ? 60.h : 50.w,
                  fit: BoxFit.contain, // لتغطية المساحة المتاحة بالكامل
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          // النص في المنتصف أو في المكان المحدد
          Expanded(
            child: Text(
              text!, // النص الذي سيتم عرضه
              style: isLandscape ? Styles.textStyle16 : Styles.textStyle16,
              textAlign: textAlign,
              // مكان النص حسب القيمة الممررة
            ),
          ),

          // أيقونة الكاميرا
          GestureDetector(
            child: Container(
              height: isLandscape ? 30.h : 30.h,
              width: isLandscape ? 30.w : 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), // حواف دائرية للحاوية
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(5), // حواف دائرية للصورة أيضًا
                child: Image.asset(
                  Assets.camera,
                  height: isLandscape ? 60.h : 50.h,
                  width: isLandscape ? 60.h : 50.w,
                  fit: BoxFit.contain, // لتغطية المساحة المتاحة بالكامل
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
