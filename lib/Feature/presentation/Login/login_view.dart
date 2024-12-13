import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/Login/widget/login_view_body.dart';
import 'package:selaty/constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMyWhite,
      body: SafeArea(child: LoginViewBody()),
    );
  }
}
