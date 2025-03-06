import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/home/data/model/category/datum.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/utils/app_router.dart';

class ListViewCategories extends StatelessWidget {
  final Datum category;
  const ListViewCategories({super.key, required this.category});

  final String baseUrl = "https://marketappmaster.com/uploads/";

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    // 🔹 التحقق من صحة رابط الصورة
    String imageUrl = category.img != null && category.img!.startsWith('http')
        ? category.img!
        : "$baseUrl${category.img}";

    print("🔵 رابط الصورة: $imageUrl"); // ✅ طباعة الرابط للتأكد

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kCategoryView);
      },
      child: SizedBox(
        height: 100.h,
        width: MediaQuery.of(context).size.width * (isLandscape ? .15 : .2),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                category.name ?? "اسم غير متوفر",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 55.h,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 30.r,
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: 55.r, // ✅ ضبط الحجم ليكون دائريًا متناسقًا
                    height: 55.r,
                    fit: BoxFit.cover, // ✅ جعل الصورة تملأ الدائرة
                    placeholder: (context, url) =>
                        CircularProgressIndicator(), // ✅ مؤشر تحميل
                    errorWidget: (context, url, error) {
                      print("🔴 فشل تحميل الصورة: $imageUrl"); // ✅ طباعة الخطأ
                      return Image.asset(Assets.category, fit: BoxFit.cover);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
