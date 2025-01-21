import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/widget/custom_icon.dart';

class CustomRowHomeView extends StatelessWidget {
  const CustomRowHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Row(
      children: [
        const CustomIcon(
          color: Colors.white,
          image: Assets.camera,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isLandscape ? 2.w : 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'احمد مصطفى', // النص الذي سيتم عرضه
                  style: isLandscape ? Styles.textStyle12 : Styles.textStyle14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'المنوفية-شبين الكوم', // النص الذي سيتم عرضه
                      style:
                          isLandscape ? Styles.textStyle12 : Styles.textStyle14,
                    ),
                    Icon(
                      Icons.person_pin_circle,
                      color: kMyRed,
                      size: isLandscape ? 16 : 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        CircleAvatar(
            backgroundColor: Colors.white,
            radius: isLandscape ? 25.r : 32.r,
            // نصف قطر الدائرة (يمكن تعديله حسب الحاجة)

            child: Container(
              width: isLandscape ? 40.w : 50.w, // عرض الدائرة
              height: isLandscape ? 40.h : 50.h, // ارتفاع الدائرة
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(Assets.person),
                  fit: BoxFit.contain, // لجعل الصورة تملأ الدائرة
                ),
              ),
            )),
      ],
    );
  }
}
