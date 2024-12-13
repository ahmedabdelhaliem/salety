import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';

import '../../../../constants.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductCategoryView);
      },
      child: Container(
        // width: MediaQuery.of(context).size.width * .3,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4), // لون الظل مع شفافية
              spreadRadius: 2, // انتشار الظل
              blurRadius: 2, // مدى تمويه الظل
              offset: const Offset(0, 2), // الإزاحة (x, y) لتحديد اتجاه الظل
            ),
          ],
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: kMyGreen,
                  ),
                ),
                const Spacer(),
                Container(
                  height: isLandscape ? 20 : 22.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: kMyGreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r),
                    ),
                  ),
                  child: const Center(
                      child:
                          Text('جديد', style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
            Container(
              height: 50.h,
              color: Colors.white,
              width: MediaQuery.of(context).size.width * .4,
              child: Image.asset(
                Assets.product,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 19.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: kMyGreen,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: const Center(
                        child: Text('فواكة',
                            style: TextStyle(color: Colors.white))),
                  ),
                )),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Opacity(
                  opacity: 0.5,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.end, // لضبط المحاذاة إلى اليمين
                    children: [
                      Text(
                        'طبق فواكة',
                        style: Styles.textStyle16.copyWith(color: Colors.black),
                      ),
                      Text(
                        '1 kg',
                        style: Styles.textStyle16.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: isLandscape ? 60.h : 50.h,
              decoration: BoxDecoration(
                color: kMyGray,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.r),
                  bottomLeft: Radius.circular(10.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: isLandscape ? 35.h : 35.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kMyRed,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_shopping_cart,
                          size: isLandscape ? 16 : 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      '50 SAR',
                      style: isLandscape
                          ? Styles.textStyle8
                              .copyWith(fontWeight: FontWeight.bold)
                          : Styles.textStyle12
                              .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
