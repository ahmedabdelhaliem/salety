import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/Splash/widget/splash_view_body.dart';
import 'package:selaty/constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: kMyWhite, body: SplashViewBody());
  }
}
