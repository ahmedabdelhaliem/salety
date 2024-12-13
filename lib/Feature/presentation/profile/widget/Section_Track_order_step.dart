import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/profile/widget/circle_avater_icon.dart';
import 'package:selaty/Feature/presentation/profile/widget/custom_row_step_track_order.dart';

class SectionTrackOrderStep extends StatelessWidget {
  const SectionTrackOrderStep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      width: islandScape ? 250.w : 300.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: islandScape ? 60.w : 40.w,
            vertical: islandScape ? 40.h : 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CircleAvataterIcon(
                  height: 30.h,
                  icon: Icons.check_circle_outline,
                ),
                CircleAvataterIcon(
                  height: 30.h,
                  icon: Icons.receipt_long,
                ),
                CircleAvataterIcon(
                  height: 30.h,
                  icon: Icons.local_shipping_outlined,
                ),
                CircleAvataterIcon(
                  height: 30.h,
                  icon: Icons.error_outline,
                ),
                const CircleAvataterIcon(
                  icon: Icons.schedule_outlined,
                ),

                // أيقونة تم الطلب
              ],
            ),
            const Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomRowStepTrackOrder(
                  text: 'تم الطلب',
                  desText: 'Jan 20 2024',
                ),
                CustomRowStepTrackOrder(
                  text: 'Orderd ',
                  desText: 'Jan 20 2024',
                ),
                CustomRowStepTrackOrder(
                  text: 'تم شحن الطلب',
                  desText: 'Jan 20 2024',
                ),
                CustomRowStepTrackOrder(
                  text: 'خارج الخدمة',
                  desText: 'قيد الانتظار',
                ),
                CustomRowStepTrackOrder(
                  text: 'أجل تسليم',
                  desText: 'قيد الانتظار',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
