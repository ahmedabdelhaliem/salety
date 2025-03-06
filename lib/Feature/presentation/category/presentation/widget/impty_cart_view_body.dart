import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class ImptyCartViewBody extends StatelessWidget {
  const ImptyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: isLandscape ? 40 : 20.w,
          vertical: isLandscape ? 5 : 10.h),
      children: [
        const CustomAppBar(),
        SizedBox(height: 10.h),
        Container(
          height:
              MediaQuery.of(context).size.height * (isLandscape ? 1.2.h : .8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .3,
                  width: MediaQuery.of(context).size.width * .3,
                  child: Image.asset(
                    Assets.bag,
                    color: kMyRed,
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  'العربة التسوق  فارغة !',
                  style: Styles.textStyle20,
                ),
                Text(
                  'اجعل سلتك سعيدة واضف منتجات',
                  style: Styles.textStyle18,
                ),
                // SizedBox(height: 20.h), // إضافة مسافة قبل الزر
                const Spacer(),
                CustomButton(
                  height: 60.h,
                  width: 300.w,
                  color: kMyGreen,
                  name: 'ابدا التسوق',
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kOrderSuccess);
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 50.h), // إضافة مسافة بعد الحاوية
      ],
    );
  }
}
