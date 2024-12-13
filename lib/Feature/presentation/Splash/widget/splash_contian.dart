import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Splash/widget/custom_Arrow_botton.dart';
import 'package:selaty/Feature/presentation/Splash/widget/custom_smooth_page.dart';
import 'package:selaty/Feature/presentation/Splash/widget/fourth_splash.dart';
import 'package:selaty/Feature/presentation/Splash/widget/secend_splash.dart';
import 'package:selaty/Feature/presentation/Splash/widget/third_splash.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/utils/app_router.dart';

class SplashContian extends StatefulWidget {
  const SplashContian({super.key, required this.controller});
  final PageController controller;

  @override
  _SplashContianState createState() => _SplashContianState();
}

class _SplashContianState extends State<SplashContian> {
  final PageController _pageController = PageController();
  Color indicatorColor = kMyRed; // اللون الافتراضي للمؤشر

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _updateIndicatorColor(int pageIndex) {
    setState(() {
      switch (pageIndex) {
        case 0:
          indicatorColor = kMyRed;
          break;
        case 1:
          indicatorColor = kMyGreen;
          break;
        case 2:
          indicatorColor = kMyMove;
          break;
        default:
          indicatorColor = Colors.grey;
      }
    });
  }

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
          SizedBox(
            height: 30.h,
            width: 30.w,
            child: Image.asset(
              Assets.background,
              fit: BoxFit.cover,
            ),
          ),
          PageView(
            controller: _pageController,
            onPageChanged:
                _updateIndicatorColor, // تحديث اللون عند تغيير الصفحة
            children: [
              SecendSplash(controller: _pageController),
              ThirdSplash(controller: _pageController),
              FourthSplash(controller: _pageController),
            ],
          ),
          Positioned(
            bottom: 30.h,
            left: 13.w,
            right: 13.w,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomArrowRighetBotton(
                        color: indicatorColor, // استخدام اللون الحالي للزر
                        onPressed: () {
                          if (_pageController.page!.toInt() < 2) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            GoRouter.of(context)
                                .push(AppRouter.kLoginAndRegisterView);
                          }
                        },
                      ),
                      CustomSmoothPage(
                        color: indicatorColor, // استخدام اللون الحالي للمؤشر
                        controller: _pageController,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
