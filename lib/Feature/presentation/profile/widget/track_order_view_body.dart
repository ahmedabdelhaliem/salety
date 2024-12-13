import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/profile/widget/Section_Track_order_step.dart';
import 'package:selaty/Feature/presentation/profile/widget/custom_container_order.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';

class TrackOrderViewBody extends StatelessWidget {
  const TrackOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .15,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(
              text: 'ترتيب المسار',
            ),
            SizedBox(
              height: 10.h,
            ),
            const CustomContainerOrder(),
            SizedBox(
              height: 10.h,
            ),
            const SectionTrackOrderStep(),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
