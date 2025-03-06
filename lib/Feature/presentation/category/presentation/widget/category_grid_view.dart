import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/details_item.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/utils/app_router.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kCategoryView);
      },
      child: SizedBox(
        height: 100, // تحديد ارتفاع الحاوية ليكون ثابتًا
        width: MediaQuery.of(context).size.width * .2, // العرض ثابت أيضًا
        child: Stack(
          fit: StackFit.expand, // استخدام StackFit.expand لتمديد الحاوية
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r), // جعل الحواف بيضاوية
                color: Colors.white,
              ),
            ),
            // إضافة DetailsItem
            const DetailsItem(),
            // إضافة CircleAvatar في منتصف الحاوية
            Positioned(
                top: 70
                    .h, // تغيير القيمة حسب الحاجة لوضع CircleAvatar في المكان المناسب
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.white, // لون خلفية الدائرة

                  child: CircleAvatar(
                      radius: 27.r, // نصف قطر الدائرة
                      backgroundColor: Colors.red, // لون خلفية الدائرة
                      child: Container(
                          padding: EdgeInsets.all(5.r), // لإضافة مسافة حول النص
                          child: Image.asset(Assets.category))),
                )),
          ],
        ),
      ),
    );
  }
}
