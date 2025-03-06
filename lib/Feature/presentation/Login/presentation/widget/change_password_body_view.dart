import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';
import 'package:selaty/core/widget/custom_text_feild..dart';

class ChangePasswordBodyView extends StatelessWidget {
  const ChangePasswordBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          const CustomAppBar(
            text: 'تغيير كلمة المرور',
          ),
          SizedBox(
            height: 30.h,
          ),
          const CustomTextFeild(
            color: Colors.grey,
            obscureText: true,
            labelText: 'كلمة المرور الحالية ',
            icon: Icons.visibility_off,
          ),
          SizedBox(
            height: 30.h,
          ),
          const CustomTextFeild(
            icon: Icons.visibility_off,
            color: Colors.grey,
            obscureText: true,
            labelText: 'كلمة المرور الجديدة',
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomButton(
            name: 'تتغير',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kDoneChangeView);
            },
            color: kMyGreen,
          )
        ],
      ),
    );
  }
}
