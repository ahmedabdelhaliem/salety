import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/presentation/manager/cubit/login/login_cubit.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/custom_logo_login.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/row_span_texr.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';
import 'package:selaty/core/widget/custom_text_feild..dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isPasswordVisible = false; // متغير لتغيير حالة إظهار/إخفاء كلمة المرور
  bool isEmailValid = false; // متغير للتحقق من صحة البريد الإلكتروني

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    var c = context.read<LoginCubit>();

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('تم تسجيل الدخول بنجاح')),
          );
          GoRouter.of(context).push(AppRouter.kHomeView);
        } else if (state is LoginLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) =>
                const Center(child: CircularProgressIndicator()),
          );
        } else if (state is LoginError) {
          Navigator.of(context).pop(); // إغلاق التحميل إذا كان مفتوحًا
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessages)),
          );
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: islandScape ? 100.w : 20.w),
              child: Form(
                key: c.formKey, // استخدام مفتاح النموذج
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomAppBar(text: '', textAlign: TextAlign.right),
                    const CustomLogoLogin(),
                    SizedBox(height: 20.h),

                    // **حقل البريد الإلكتروني**
                    CustomTextFeild(
                      controller: c.emailController,
                      labelText: 'عنوان البريد الإلكتروني',
                      obscureText: false,
                      icon: isEmailValid
                          ? Icons.check_circle
                          : null, // أيقونة الصح
                      color: isEmailValid ? kMyGreen : Colors.grey, // اللون
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        setState(() {
                          isEmailValid = RegExp(
                                  r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                              .hasMatch(value);
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'يرجى إدخال البريد الإلكتروني';
                        }
                        if (!isEmailValid) {
                          return 'يرجى إدخال بريد إلكتروني صحيح';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20.h),

                    // **حقل كلمة المرور**
                    CustomTextFeild(
                      controller: c.passwordController,
                      obscureText:
                          !isPasswordVisible, // استخدام الحالة للتحكم بالإخفاء
                      labelText: 'كلمة المرور',
                      icon: isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off, // تبديل الأيقونة
                      color: Colors.grey,
                      keyboardType: TextInputType.visiblePassword,
                      onIconPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible; // عكس الحالة
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'يرجى إدخال كلمة المرور';
                        }
                        if (value.length < 6) {
                          return 'يجب أن تكون كلمة المرور 6 أحرف على الأقل';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20.h),

                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context)
                              .push(AppRouter.kChangePasswordView);
                        },
                        child: const Text('هل نسيت كلمة المرور؟'),
                      ),
                    ),

                    SizedBox(height: 20.h),

                    CustomButton(
                      width: MediaQuery.of(context).size.width * .65,
                      name: 'تسجيل الدخول',
                      onPressed: state is LoginLoading
                          ? () {}
                          : () => c.loginValidat(),
                      color: kMyGreen,
                    ),

                    SizedBox(height: 40.h),

                    const RowSpanText(),

                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
