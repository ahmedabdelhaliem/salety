import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selaty/Feature/presentation/Login/presentation/manager/cubit/login/login_cubit.dart';
import 'package:selaty/Feature/presentation/Login/data/repo/login_repo/auth_Repo_Impi.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/login_view_body.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/api/api_services.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMyWhite,
      body: SafeArea(
          child: BlocProvider(
        create: (context) =>
            LoginCubit(authRepoImpi(apiServices: ApiServices(Dio()))),
        child: LoginViewBody(),
      )),
    );
  }
}
