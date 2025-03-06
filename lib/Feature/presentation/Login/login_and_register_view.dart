import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/login_and_register_view_body.dart';
import 'package:selaty/constants.dart';

class LoginAndRegisterView extends StatelessWidget {
  const LoginAndRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMyWhite,
      // appBar: AppBar(),
      body: SafeArea(child: LoginAndRegisterViewBody()),
    );
  }
}
