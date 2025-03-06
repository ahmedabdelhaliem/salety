import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/Login/data/model/register/register.dart';
import 'package:selaty/Feature/presentation/Login/data/repo/login_repo/login_repo.dart';
import 'package:selaty/core/utils/shared_pref.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final LoginRepo loginRepo;

  // 🔹 متحكمات الإدخال
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // 🔹 حالة رؤية كلمة المرور
  bool isPasswordVisible = false;

  RegisterCubit(this.loginRepo) : super(RegisterInitial());

  // ✅ دالة تبديل رؤية كلمة المرور
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    emit(RegisterPasswordVisibilityChanged()); // 🔹 إرسال حالة جديدة
  }

  // ✅ دالة التسجيل
  Future<void> register() async {
    print("📌 Phone: ${phoneController.text}");
    print("📩 Email: ${emailController.text}");
    print("🔑 Password: ${passwordController.text}");
    print("🔑 Confirm Password: ${confirmPasswordController.text}");

    if (passwordController.text != confirmPasswordController.text) {
      emit(RegisterError(errorMessage: "كلمة المرور غير متطابقة"));
      return;
    }

    emit(RegisterLoading());

    final result = await loginRepo.register(
      nameController.text.trim(),
      emailController.text.trim(),
      passwordController.text.trim(),
      phoneController.text.trim(),
    );

    result.fold(
      (failure) => emit(RegisterError(errorMessage: failure.errorMessage)),
      (registerResponse) async {
        if (registerResponse.status == true && registerResponse.data != null) {
          final String? token = registerResponse.data!.token;
          if (token != null && token.isNotEmpty) {
            await Preferences.setString('user_token', token);
            emit(RegisterSuccess(userRegister: registerResponse));
          } else {
            emit(RegisterError(errorMessage: "Token is missing from response"));
          }
        } else {
          emit(RegisterError(
              errorMessage:
                  registerResponse.errorMessage ?? "Registration failed"));
        }
      },
    );
  }

  // ✅ تنظيف `TextEditingController` عند التخلص من الكيوبت
  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
    return super.close();
  }
}
