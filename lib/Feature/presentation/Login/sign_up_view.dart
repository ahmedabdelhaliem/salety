import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/widget/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0XFFE4E4E4),
          leading: TextButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_camera),
            ),
          ],
        ),
        body: const SignUpViewBody(),
      ),
    );
  }
}
