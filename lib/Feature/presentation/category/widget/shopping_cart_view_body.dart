import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/category/widget/container_shopping_list_view.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class ShoppingCartViewBody extends StatelessWidget {
  const ShoppingCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isLandscape ? 40.w : 20.w,
        // vertical: isLandscape ? 10.h : 10.h,
      ),
      child: Column(
        children: [
          Expanded(
            // لجعل `ListView` يأخذ المساحة المتبقية فقط ويصبح قابل للتمرير
            child: ListView(
              children: const [
                CustomAppBar(
                  text: 'عربة التسوق',
                ),
                ContainerShoppingListView(),
              ],
            ),
          ),
          SizedBox(
              height: isLandscape
                  ? 10.h
                  : 5.h), // لإضافة مساحة بين `ListView` والعناصر الثابتة

          // الجزء الثابت في الأسفل
          const Collection(),
          SizedBox(height: isLandscape ? 30.h : 5.h),

          CustomButton(
            height: MediaQuery.of(context).size.height *
                (isLandscape ? 0.15 : 0.075),
            width:
                MediaQuery.of(context).size.width * (isLandscape ? 0.3 : 0.9),
            color: kMyGreen,
            name: 'دفع',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kImptyCartView);
            },
          ),
          SizedBox(height: isLandscape ? 30.h : 20.h),
        ],
      ),
    );
  }
}

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Container(
      padding: EdgeInsets.all(isLandscape ? 10.r : 16.r),
      width: isLandscape
          ? MediaQuery.of(context).size.width * .4
          : double.infinity, // عرض العنصر في الوضع الأفقي
      height: isLandscape
          ? MediaQuery.of(context).size.height * 0.35
          : MediaQuery.of(context).size.height *
              0.18, // ارتفاع العنصر في الوضع الأفقي
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isLandscape ? 20.r : 15.r),
      ),
      child: Column(
        crossAxisAlignment:
            isLandscape ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('البنود',
                  style: isLandscape ? Styles.textStyle12 : Styles.textStyle16),
            ],
          ),
          // SizedBox(height: isLandscape ? 2.h : 10.h),
          Row(
            mainAxisAlignment: isLandscape
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.spaceBetween,
            children: [
              Text('Free',
                  style: isLandscape ? Styles.textStyle8 : Styles.textStyle16),
              Text('المجموع الفرعي',
                  style: isLandscape ? Styles.textStyle8 : Styles.textStyle16),
            ],
          ),
          // SizedBox(height: isLandscape ? 2.h : 10.h),
          Row(
            mainAxisAlignment: isLandscape
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.spaceBetween,
            children: [
              Text('100.00 SAR',
                  style: isLandscape ? Styles.textStyle8 : Styles.textStyle18),
              Text('رسوم التوصيل',
                  style: isLandscape ? Styles.textStyle8 : Styles.textStyle18),
            ],
          ),
          // SizedBox(height: isLandscape ? 2.h : 10.h),
          Row(
            mainAxisAlignment: isLandscape
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.spaceBetween,
            children: [
              Text('100.00 SAR',
                  style: isLandscape ? Styles.textStyle8 : Styles.textStyle18),
              Text('الاجمالي',
                  style: isLandscape ? Styles.textStyle8 : Styles.textStyle18),
            ],
          ),
        ],
      ),
    );
  }
}
