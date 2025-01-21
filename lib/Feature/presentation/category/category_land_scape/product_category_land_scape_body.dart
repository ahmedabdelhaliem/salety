import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/category/widget/product_category_grid_view_item.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/section_row_and_setting.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';

class ProductCategoryLandScapeBody extends StatelessWidget {
  const ProductCategoryLandScapeBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  color: const Color(0xff5DB15C),
                  height: isLandscape
                      ? MediaQuery.of(context).size.height * 0.3
                      : MediaQuery.of(context).size.height * 0.2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: const CustomAppBar(),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: isLandscape ? 60.w : 30.w),
                  child: const SectionRowAndSetting(),
                ),
              ],
            ),
            Positioned(
              top: isLandscape ? 80.h : 105.h, // تعديل الموضع في الوضع الأفقي
              left: MediaQuery.of(context).size.width * 0.4,
              child: CircleAvatar(
                radius: 36.r,
                backgroundColor: Colors.white.withOpacity(.3),
                child: CircleAvatar(
                  radius: 32.r,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(5.r),
                    child: Image.asset(
                      Assets.logo2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: isLandscape ? 10.r : 20.r),
        const ProductCategoryGridViewItem(),
        SizedBox(height: isLandscape ? 10.r : 20.r),
      ],
    );
  }
}
