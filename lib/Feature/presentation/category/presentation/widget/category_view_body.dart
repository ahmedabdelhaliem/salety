import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/category_gride_view_item.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Stack(children: [
        Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(scrollDirection: Axis.vertical, children: [
                const CategoryGridViewItem(),
                SizedBox(
                  height: 20.h,
                ),
              ]),
            ),
          ],
        ),
      ]),
    );
  }
}
