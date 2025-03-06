import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';

class SwiperSlider extends StatelessWidget {
  final List<Map<String, dynamic>> dataList;

  const SwiperSlider({super.key, required this.dataList});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: isLandscape ? 3.h : 5.h,
        horizontal: isLandscape ? 3.w : 5.w,
      ),
      child: SizedBox(
        height: isLandscape ? 100.h : MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            final item = dataList[index];
            final String? imageUrl = item['img'];

            // ✅ طباعة الرابط للتحقق من القيم
            print("🟢 رابط الصورة: $imageUrl");

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: SizedBox(
                  width: isLandscape
                      ? MediaQuery.of(context).size.width * 0.35
                      : MediaQuery.of(context).size.width * 0.9,
                  child: imageUrl != null && imageUrl.isNotEmpty
                      ? Image.network(
                          imageUrl.startsWith("http")
                              ? imageUrl
                              : "https://marketappmaster.com/uploads/$imageUrl",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            print("🔴 فشل تحميل الصورة: $imageUrl");
                            return Image.asset(Assets.slider,
                                fit: BoxFit.cover);
                          },
                        )
                      : Image.asset(
                          Assets.slider,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
