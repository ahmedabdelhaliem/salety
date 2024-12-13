import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/widget/row_social_media.dart';
import 'package:selaty/Feature/presentation/Login/widget/row_span_texr.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';
import 'package:selaty/core/widget/custom_text_feild..dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: islandScape ? 100.w : 16.w),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'انشاء حساب جديد',
                  style: islandScape ? Styles.textStyle20 : Styles.textStyle30,
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Opacity(
                  opacity: .5,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'ادخال البيانات ل انشاء ظالحساب',
                      textAlign: TextAlign.right,
                      style: Styles.textStyle14,
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextFeild(
                obscureText: false,
                labelText: 'الاسم',
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextFeild(
                labelText: 'عنوان البريد الالكتروني',
                obscureText: false,
                icon: Icons.check_circle_outline,
                color: kMyGreen,
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextFeild(
                icon: Icons.visibility_off,
                obscureText: true,
                labelText: 'الرقم السري',
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                name: 'الاشتراك',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kRegisterPhone);
                },
                color: kMyGreen,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Center(child: Text(' او اشترك مع')),
              SizedBox(
                height: 20.h,
              ),
              const RowSocialMedia(),
              SizedBox(
                height: 20.h,
              ),
              const RowSpanText()
            ],
          ),
        ),
      ),
    );
  }
}
