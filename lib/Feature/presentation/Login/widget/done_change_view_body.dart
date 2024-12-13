import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/Login/widget/custom_dotted_border.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';
import 'package:selaty/core/widget/custom_botton.dart';

class DoneChangeViewBody extends StatelessWidget {
  const DoneChangeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: islandScape ? 50.w : 0.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const CustomAppBar(),
            SizedBox(
              height: 100.h,
            ),
            const Center(
              child: CustomDottedBorder(),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'كلمة الجديدة الخاصة بك',
              style: Styles.textStyle18.copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              textColor: kMyRed,
              name: 'تم',
              onPressed: () {},
              color: Colors.white,
              width: MediaQuery.of(context).size.width * .5,
            )
          ],
        ),
      ),
    );
  }
}
