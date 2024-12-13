import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/widget/otp_view_body.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFE4E4E4),
        leading: TextButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: Title(
          color: Colors.black,
          child: Text(
            'تحقق من الهاتف',
            style: Styles.textStyle20,
            textAlign: TextAlign.center,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_camera),
          ),
        ],
      ),
      body: const OtpViewBody(),
    );
  }
}
