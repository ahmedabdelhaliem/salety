import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomContainerOrder extends StatelessWidget {
  const CustomContainerOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
        padding: EdgeInsets.all(10.r),
        width: MediaQuery.of(context).size.width * (islandScape ? .65 : .9),
        height: MediaQuery.of(context).size.height * (islandScape ? .3 : .15),
        decoration: BoxDecoration(
            color: kMyGreen, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: islandScape ? 40.r : 30.r,
              child: Image.asset(
                Assets.logo2,
                height: islandScape ? 60.h : 50.h,
                width: islandScape ? 60.w : 50.w,
              ),
            ),
            Column(
              crossAxisAlignment:
                  CrossAxisAlignment.end, // لضبط النصوص إلى اليسار
              children: [
                Text('معرفة الطلب : #SoDdfl5', // النص الأول
                    style: Styles.textStyle16.copyWith(color: Colors.white)),
                SizedBox(height: 2.h), // مسافة بين النصين
                Text('تاريخ النشر 20كانوت الثاني', // النص الثاني
                    style: Styles.textStyle12.copyWith(color: Colors.white)),
                Row(
                  children: [
                    Text('الاجمالي 100 ريال', // النص الأول
                        style:
                            Styles.textStyle16.copyWith(color: Colors.white)),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text('البنود:15', // النص الأول
                        style:
                            Styles.textStyle16.copyWith(color: Colors.white)),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
