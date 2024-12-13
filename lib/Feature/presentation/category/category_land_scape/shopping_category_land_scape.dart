import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/category/widget/container_shopping_list_view.dart';
import 'package:selaty/Feature/presentation/category/widget/shopping_cart_view_body.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class ShoppingCartViewBodyLandScape extends StatelessWidget {
  const ShoppingCartViewBodyLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
        ),
        child: Column(
          children: [
            const CustomAppBar(),
            // SizedBox(height: 20.h),
            Expanded(
              child: Row(
                children: [
                  // الجزء الثابت (الجهة اليمنى)
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        const Collection(),
                        SizedBox(height: 10.h),
                        CustomButton(
                          color: kMyGreen,
                          height: 60.h,
                          width: 155.w,
                          name: 'الدفع',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 10.w),
                  // الجزء المتحرك (الجهة اليسرى)
                  const Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ContainerShoppingListView(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
