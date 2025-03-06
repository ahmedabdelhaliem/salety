import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/custom_logo_login.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';
import 'package:selaty/constants.dart';

class LoginAndRegisterViewBody extends StatelessWidget {
  const LoginAndRegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // const CustomAppBar(),
        SizedBox(
          height: 50.h,
        ),
        const CustomLogoLogin(),
        SizedBox(
          height: 20.h,
        ),
        CustomButton(
            width: MediaQuery.of(context).size.width * .65,
            color: kMyRed,
            name: 'تسجيل الدخول',
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
            }),
        SizedBox(
          height: 20.h,
        ),
        CustomButton(
            width: MediaQuery.of(context).size.width * .65,
            height: 70.h,
            color: kMyGreen,
            name: 'انشاء حساب',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSignUpView);
            })
      ],
    );
  }
}
