import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class OrderSuccessViewBody extends StatelessWidget {
  const OrderSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: isLandscape ? 50.w : 20.w,
          vertical: isLandscape ? 5.h : 10.h),
      children: [
        const CustomAppBar(),
        SizedBox(height: 10.h),
        Container(
          height:
              MediaQuery.of(context).size.height * (isLandscape ? 1.4.h : .8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: kMyGreen,
          ),
          child: Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width * .4,
                  child: Image.asset(
                    Assets.succesBag,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: Text(
                    'شكرا ع طلبك',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle18.copyWith(color: Colors.white),
                  ),
                ),
                const Spacer(),
                CustomButton(
                    height: 60.h,
                    width: isLandscape ? 200.w : 300.w,
                    color: const Color(0xff37334A),
                    name: ' ترتيب المسار',
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kDeliveryAddressView);
                    })
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
        )
      ],
    );
  }
}
