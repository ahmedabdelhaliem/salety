import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/search_text_feild.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/widget/custom_icon.dart';

class SectionRowAndSetting extends StatelessWidget {
  const SectionRowAndSetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            const Expanded(child: SearchTextField()),
            SizedBox(
              width: 5.w,
            ),
            CustomIcon(
                height: 45.h,
                width: 45.w,
                color: kMyRed,
                image: Assets.settings) // توسيع SearchTextField
          ],
        ),
      ],
    );
  }
}
