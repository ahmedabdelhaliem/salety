import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/text_feild_phone.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class RegisterPhoneBody extends StatelessWidget {
  const RegisterPhoneBody({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: islandScape ? 90.w : 16.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomAppBar(
              text: 'التحقق من رقم الهاتف',
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 20.h,
            ),
            Opacity(
              opacity: .6,
              child: Text(
                  ' $phoneNumberلقد أرسلنا رسالة نصية قصيرة تحتوي على رمز إلى الرقم',
                  style: Styles.textStyle14.copyWith(
                    fontSize: islandScape ? width * 0.02 : width * 0.035,
                  ),
                  textAlign: TextAlign.right),
            ),
            SizedBox(
              height: 20.h,
            ),
            const TextFeildPhone(
              suffixIcon: Icon(Icons.close),
              obscureText: false,
              labelText: 'ادخل رقم الهاتف',
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomButton(
                color: kMyGreen,
                name: 'تاكيد',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kOtpView);
                })
          ],
        ),
      ),
    );
  }
}
