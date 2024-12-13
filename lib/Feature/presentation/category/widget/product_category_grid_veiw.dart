import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/utils/app_router.dart';

import '../../../../constants.dart';

class ProductCategoryGridVeiw extends StatelessWidget {
  const ProductCategoryGridVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        // height: 20, // ضبط ارتفاع ثابت للحاوية لتفادي المشاكل
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), // جعل الحواف بيضاوية
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
                  height: 20.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                      color: kMyGreen,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          bottomLeft: Radius.circular(10.r))),
                  child: const Center(
                      child:
                          Text('جديد', style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 50.h,
                color: Colors.white,
                width: double.infinity,
                child: Image.asset(
                  Assets.product,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                height: 20.h,
                width: 70.w,
                decoration: BoxDecoration(
                    color: kMyGreen, borderRadius: BorderRadius.circular(15.r)),
                child: const Center(
                    child:
                        Text('فواكة', style: TextStyle(color: Colors.white))),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Opacity(
                  opacity: .5,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'طبق فواكة\n',
                          style:
                              Styles.textStyle16.copyWith(color: Colors.black),
                        ),
                        TextSpan(
                          text: '1 kg',
                          style:
                              Styles.textStyle16.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 10.h), // إضافة مسافة صغيرة قبل الفوتر
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: kMyGray,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r))),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kMyRed,
                        ),
                        child: IconButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .push(AppRouter.kShoppingCartView);
                          },
                          icon: Icon(
                            Icons.add_shopping_cart,
                            size: 18.r,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        '50 SAR',
                        style: Styles.textStyle14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
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
