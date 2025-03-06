import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/change_password_body_view.dart';
import 'package:selaty/constants.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMyWhite,
      body: SafeArea(child: ChangePasswordBodyView()),
    );
  }
}
