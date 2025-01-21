import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/best_seller_list_view.dart';

class FreshCategoryGridView extends StatelessWidget {
  const FreshCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // تحديد وضع الشاشة
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    // تحديد عدد الأعمدة بناءً على وضع الشاشة
    // final int crossAxisCount =
    //     isLandscape ?  2; // 4 أعمدة في وضع landscape و 2 في portrait

    return SizedBox(
      // width: MediaQuery.of(context).size.width,
      height: isLandscape
          ? 550.h
          : 500.h, // تأكد من أن الارتفاع كافٍ لتجنب تجاوز المساحة
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة
            crossAxisSpacing: 5.h,
            mainAxisSpacing: 8.w,
            childAspectRatio: isLandscape ? 1.4 : 1.6
            //  MediaQuery.of(context).size.width /
            //     (MediaQuery.of(context).size.height *
            //         (isLandscape ? 2 : 0.35)), // حساب نسبة العرض إلى الارتفاع
            ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: const BestSellerListView(),
          );
        },
      ),
    );
  }
}
