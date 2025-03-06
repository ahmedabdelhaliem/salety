import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/Login/presentation/widget/register_phone_body.dart';
import 'package:selaty/constants.dart';

class RegisterPhone extends StatelessWidget {
  const RegisterPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMyWhite,
      body: SafeArea(
        child: RegisterPhoneBody(
          phoneNumber: '0111111111111',
        ),
      ),
    );
  }
}
