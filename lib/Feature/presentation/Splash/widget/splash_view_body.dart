import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/utils/app_router.dart';
import 'package:selaty/core/assets/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigatToHome();
  }

  // دالة التنقل إلى الصفحة الرئيسية
  void navigatToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).pushReplacement(AppRouter.kSplashContian);
    });
  }

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      body: Stack(
        children: [
          // خلفية الصورة
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
          // المحتوى فوق الخلفية
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // الصورة (الشعار)
                Image.asset(
                  Assets.logo,
                  height: 200.h,
                  width: 200.w,
                ),
                SizedBox(height: 20.h),
                const Text(
                  'سلتي',
                  style: TextStyle(
                      color: kMyRed, fontSize: 30, fontWeight: FontWeight.w600),
                ),
                // مسافة بين الصورة ودائرة التحميل

                // دائرة التحميل
                const CircularProgressIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
