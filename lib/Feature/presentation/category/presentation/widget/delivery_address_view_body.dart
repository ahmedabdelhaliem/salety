import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/delivery_contaioner.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class DeliveryAddressViewBody extends StatelessWidget {
  const DeliveryAddressViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isLandscape ? 40.w : 16.w),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomAppBar(
                    text: 'عنوان التسليم',
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'يشحن الي',
                      style: Styles.textStyle16,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const DeliveryContaioner(
                    text: ":جوال ",
                    mobile: '2281215',
                    textLocation: 'المنزل',
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            height: 60.h,
            width: 300.w,
            color: kMyGreen,
            name: 'التسليم لهذا العنوان',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kTrackOrderView);
            },
          ),
          SizedBox(height: 10.h), // مسافة صغيرة أسفل الزر
        ],
      ),
    );
  }
}
