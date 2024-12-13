import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/Feature/presentation/Login/widget/custom_logo_login.dart';
import 'package:selaty/Feature/presentation/Login/widget/row_span_texr.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';
import 'package:selaty/core/widget/custom_text_feild..dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: islandScape ? 100.w : 20.w),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomAppBar(
                text: '',
                textAlign: TextAlign.right,
              ),
              const CustomLogoLogin(),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextFeild(
                labelText: 'عنوان البريد الالكتروني',
                obscureText: false,
                icon: Icons.check_circle,
                // prefixIcon: Icons.check_circle,
                color: kMyGreen,
              ),
              SizedBox(
                height: 20.h,
              ),
              const CustomTextFeild(
                obscureText: true,
                labelText: 'الرقم السري',
                icon: Icons.visibility_off,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                  alignment:
                      // islandScape ? Alignment.center :
                      Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kChangePasswordView);
                      },
                      child: const Text('هل نسيت كلمة المرور الخاصة بك'))),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width * .65,
                name: 'تسجيل الدخول',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                },
                color: kMyGreen,
              ),
              SizedBox(
                height: 40.h,
              ),
              const RowSpanText(),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
