import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/widget/pin_code_widget.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: islandScape ? 70.w : 16.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Opacity(
              opacity: .5,
              child: Text(
                'الخاص بك هنا OTP ادخل الرمز',
                style: islandScape ? Styles.textStyle14 : Styles.textStyle20,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            PinCodeWidget(
              textSubmit: (value) {
                // GoRouter.of(context).push(AppRouter.);
                // BlocProvider.of<OtpCubit>(context).SumbitPhoneNuber(value);
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'لم يصل الكود؟',
                style: islandScape ? Styles.textStyle14 : Styles.textStyle18,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اعادة ارسال الكود',
                  style: islandScape
                      ? Styles.textStyle12.copyWith(color: kMyRed)
                      : Styles.textStyle18.copyWith(color: kMyRed),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomButton(
                color: kMyGreen,
                name: 'تاكيد',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kDoneChangeView);
                })
          ],
        ),
      ),
    );
  }
}
