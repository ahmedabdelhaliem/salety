import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selaty/Feature/presentation/Login/data/repo/login_repo/login_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());

  final LoginRepo loginRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> loginUser() async {
    emit(LoginLoading());

    var result = await loginRepo.loginUser(
        password: passwordController.text, email: emailController.text);

    result.fold((failure) {
      emit(LoginError(errorMessages: failure.errorMessage));
    }, (token) async {
      // تحقق من أن token.data ليس null
      if (token.data != null) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString(
            'token',
            token.data!.token
                .toString()); // إذا كان token.data موجودًا، استخدمه
        emit(LoginSuccess());
      } else {
        emit(LoginError(errorMessages: 'Token is null.'));
      }
    });
  }

  void loginValidat() {
    if (formKey.currentState!.validate() &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      loginUser();
    } else {
      emit(LoginError(errorMessages: 'Email or password cannot be empty.'));
    }
  }
}
