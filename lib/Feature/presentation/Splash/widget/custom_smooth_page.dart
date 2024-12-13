import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPage extends StatelessWidget {
  const CustomSmoothPage({
    super.key,
    required this.color,
    required this.controller,
  });
  final Color color;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller, // PageController للتحكم في التنقل بين الصفحات
      count: 3, // عدد الصفحات
      effect: CustomizableEffect(
        activeDotDecoration: DotDecoration(
          width: 5.w,
          height: 12.h,
          color: color,
          rotationAngle: 90,
          verticalOffset: 0,
          borderRadius: BorderRadius.circular(24.r),
          dotBorder: DotBorder(
            padding: .5,
            width: .5,
            color: color,
          ),
        ),
        dotDecoration: DotDecoration(
          rotationAngle: 90,
          width: 5.w,
          height: 5.h,
          color: Colors.grey,
          borderRadius: BorderRadius.circular(16),
          verticalOffset: 0,
          dotBorder: const DotBorder(
            padding: 1,
            width: 1,
            color: Colors.grey,
          ),
        ),
        spacing: 12.0,
        // يمكنك تخصيص المزيد من الخصائص هنا
      ), // التأثيرات الخاصة بالمؤشر
    );
  }
}
