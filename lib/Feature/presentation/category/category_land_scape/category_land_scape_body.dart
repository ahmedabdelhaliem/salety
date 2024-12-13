import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/category/widget/category_gride_view_item.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';

class CategoryLandScapeBody extends StatelessWidget {
  const CategoryLandScapeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isLandscape = constraints.maxWidth > constraints.maxHeight;

      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isLandscape ? 30.w : 16.w,
          vertical: isLandscape ? 20.h : 14.h,
        ),
        child: Stack(children: [
          ListView(scrollDirection: Axis.vertical, children: [
            const CustomAppBar(),
            const CategoryGridViewItem(),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ]),
      );
    });
  }
}
