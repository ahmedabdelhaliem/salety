import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/category/widget/product_category_grid_view_item.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/section_row_and_setting.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';

class ProductCategoryViewBody extends StatelessWidget {
  const ProductCategoryViewBody({super.key});

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
                      ? MediaQuery.of(context).size.height * 0.2
                      : MediaQuery.of(context).size.height * 0.15,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: isLandscape ? 60.w : 30.w),
                    child: const Align(
                        alignment: Alignment.topCenter, child: CustomAppBar()),
                  ),
                ),
                SizedBox(height: isLandscape ? 15.h : 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: isLandscape ? 60.w : 30.w),
                  child: const SectionRowAndSetting(),
                ),
              ],
            ),
            Positioned(
              top: isLandscape ? 30.h : 80.h,
              left: isLandscape
                  ? MediaQuery.of(context).size.width * 0.45
                  : MediaQuery.of(context).size.width * 0.4,
              child: CircleAvatar(
                radius: 45.r,
                backgroundColor: Colors.white.withOpacity(.3),
                child: CircleAvatar(
                  radius: 40.r,
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
