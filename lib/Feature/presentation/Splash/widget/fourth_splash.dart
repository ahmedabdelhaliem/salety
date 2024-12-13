import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/Splash/widget/custom_logo_splash.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';

class FourthSplash extends StatelessWidget {
  const FourthSplash({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      // backgroundColor: kMyWhite,
      body: Stack(
        children: [
          Positioned(
            bottom: -55.h,
            right: -35.w,
            child: Opacity(
              opacity: .1,
              child: Image.asset(
                height: islandScape ? 100.h : 200.h,
                width: islandScape ? 100.w : 200.w,
                Assets.logo, // تأكد من استخدام المسار الصحيح لصورة الخلفية
                fit: BoxFit.cover, // يجعل الصورة تغطي الشاشة بالكامل
              ),
            ),
          ),
          ListView(children: [
            SizedBox(
              height: 60.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomLogoSplash(
                    color1: kMyMove.withOpacity(.2),
                    color2: kMyMove.withOpacity(.5),
                    color3: kMyMove,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'البحث بالقرب منك',
                    style: TextStyle(
                      color: kMyMove,
                      fontSize: 30.r,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'البحث عن المتجر القريب منك',
                    style: TextStyle(
                      fontSize: 20.r,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // SmoothPageIndicator
                  // Uncomment the following block to show the SmoothPageIndicator
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  //   child: Row(
                  //     children: [
                  //       // CustomArrowRighetBotton(
                  //       //   color: kMyRed,
                  //       //   onPressed: () {
                  //       //     // GoRouter.of(context).push(AppRouter.kThirdSplash);
                  //       //   },
                  //       // ),
                  //       const Spacer(),
                  //       CustomSmoothPage(
                  //         controller: controller,
                  //         color: kMyRed,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
