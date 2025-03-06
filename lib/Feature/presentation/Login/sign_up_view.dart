import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/data/repo/login_repo/auth_Repo_Impi.dart';
import 'package:selaty/Feature/presentation/Login/presentation/manager/cubit/register/register_cubit.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/sign_up_view_body.dart';
import 'package:selaty/core/api/api_services.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0XFFE4E4E4),
          leading: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: BlocProvider(
          create: (context) =>
              RegisterCubit(authRepoImpi(apiServices: ApiServices(Dio()))),
          child: const SignUpViewBody(),
        ),
      ),
    );
  }
}
