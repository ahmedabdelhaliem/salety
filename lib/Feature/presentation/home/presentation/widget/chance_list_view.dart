import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';

class ChanceListView extends StatelessWidget {
  const ChanceListView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Stack(children: [
      Container(
        height: isLandscape ? 250.h : 200.h,
        width: isLandscape
            ? MediaQuery.of(context).size.height * .4
            : MediaQuery.of(context).size.height * .15,
        // تحديد عرض مناسب للحاوية
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Opacity(
                opacity: .5,
                child: Text(
                  'طبق فواكه',
                  style: Styles.textStyle14,
                )),
            Text(
              'خصم 25% بدون فوائد ',
              style: Styles.textStyle12,
            ),
            Container(
              color: Colors.white,
              height: 50.h, // ارتفاع مناسب للصورة
              // width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Assets.product,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 40.h,
              decoration: BoxDecoration(
                  color: kMyGray,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r))),
            ),
          ],
        ),
      ),
      Positioned(
        top: isLandscape ? 100 : 110.h,
        left: isLandscape ? 50 : 50.w,
        child: Container(
          height: 35.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: kMyRed,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18.r,
              color: Colors.white,
            ),
          ),
        ),
      )
    ]);
  }
}
