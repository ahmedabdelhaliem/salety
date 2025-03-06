import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/presentation/manager/cubit/register/register_cubit.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/text_feild_phone.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/widget/custom_botton.dart';
import 'package:selaty/core/widget/custom_text_feild..dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var registerCubit = context.read<RegisterCubit>();

    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
        } else if (state is RegisterError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage)),
          );
        }
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text('إنشاء حساب جديد', style: Styles.textStyle30),
              ),
              SizedBox(height: 20.h),
              CustomTextFeild(
                controller: registerCubit.nameController,
                obscureText: false,
                labelText: 'الاسم',
              ),
              SizedBox(height: 20.h),
              CustomTextFeild(
                controller: registerCubit.emailController,
                obscureText: false,
                labelText: 'البريد الإلكتروني',
              ),
              SizedBox(height: 20.h),
              TextFeildPhone(
                labelText: 'رقم الهاتف',
                obscureText: false,
                controller: registerCubit.phoneController,
                // ✅ تم ربطه مع الكيوبت
                suffixIcon: Icon(Icons.phone),
              ),
              SizedBox(height: 20.h),
              SizedBox(height: 20.h),
              CustomTextFeild(
                controller: registerCubit.passwordController,
                obscureText: !registerCubit.isPasswordVisible,
                labelText: 'الرقم السري',
                icon: registerCubit.isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                onIconPressed: () {
                  context.read<RegisterCubit>().togglePasswordVisibility();
                },
              ),
              SizedBox(height: 20.h),
              CustomTextFeild(
                controller: registerCubit.confirmPasswordController,
                obscureText: !registerCubit.isPasswordVisible,
                labelText: 'تأكيد الرقم السري',
              ),
              SizedBox(height: 20.h),
              BlocBuilder<RegisterCubit, RegisterState>(
                builder: (context, state) {
                  var registerCubit = context.read<RegisterCubit>();
                  return CustomButton(
                    name: state is RegisterLoading
                        ? 'جارٍ التسجيل...'
                        : 'الاشتراك',
                    onPressed: state is RegisterLoading
                        ? () {}
                        : () {
                            if (registerCubit.passwordController.text !=
                                registerCubit.confirmPasswordController.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text('كلمة المرور غير متطابقة')),
                              );
                              return;
                            }

                            if (registerCubit.phoneController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text('يرجى إدخال رقم الهاتف')),
                              );
                              return;
                            }

                            registerCubit.register();
                          },
                    color: kMyGreen,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
