import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';

class ImageShow extends StatelessWidget {
  const ImageShow({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: isLandscape ? 3.h : 15.h,
          horizontal: isLandscape ? 3.w : 5.w), // مسافة بين العناصر
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          1, // عدد العناصر بناءً على الاتجاه
          (index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w), // مسافة بين العناصر
            child: Container(
              height: isLandscape
                  ? 110.h
                  : MediaQuery.of(context).size.height * .15,
              width: isLandscape
                  ? MediaQuery.of(context).size.width * 0.35
                  : MediaQuery.of(context).size.width * 0.9, // عرض العنصر
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10.r), // حواف دائرية للحاوية
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.r), // حواف دائرية للصورة أيضًا
                child: Image.asset(
                  Assets.slider2,
                  fit: BoxFit.cover, // لتغطية المساحة المتاحة بالكامل
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
