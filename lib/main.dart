import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/utils/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // استخدام runApp لتشغيل التطبيق
  runApp(
    const Selaty(),
  );
}

class Selaty extends StatelessWidget {
  const Selaty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          useInheritedMediaQuery: true, // ضروري لـ DevicePreview
          locale: DevicePreview.locale(context), // يدعم اللغات في DevicePreview
          builder: DevicePreview.appBuilder, // يربط التطبيق بـ DevicePreview
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0XFFE4E4E4),
          ),
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
