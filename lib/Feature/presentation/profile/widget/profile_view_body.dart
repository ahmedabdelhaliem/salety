import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/profile/widget/cart_about_main_grid_view.dart';
import 'package:selaty/Feature/presentation/profile/widget/logout_button.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: islandScape ? 80.w : 30.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    const CustomAppBar(),
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                        padding: EdgeInsets.all(islandScape ? 15.r : 10.r),
                        width: MediaQuery.of(context).size.width *
                            (islandScape ? .45 : .75),
                        height: MediaQuery.of(context).size.height *
                            (islandScape ? .28 : .15),
                        decoration: BoxDecoration(
                            color: kMyGreen,
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // لضبط النصوص إلى اليسار
                          children: [
                            Text('احمد مصطفى', // النص الأول
                                style: islandScape
                                    ? Styles.textStyle18
                                    : Styles.textStyle16
                                        .copyWith(color: Colors.white)
                                        .copyWith(color: Colors.white)),
                            SizedBox(height: 2.h), // مسافة بين النصين
                            Text('ahmedAbdelhaliem@gmail.com', // النص الثاني
                                style: islandScape
                                    ? Styles.textStyle16
                                    : Styles.textStyle16
                                        .copyWith(color: Colors.white)
                                        .copyWith(color: Colors.white)),
                          ],
                        )),
                  ],
                ),
                Positioned(
                  left: 13.w,
                  right: 13.w,
                  top: islandScape
                      ? 30
                      : 50.h, // يمكنك تعديل هذه القيمة لجعل الجزء السفلي في مكان معين
                  child: CircleAvatar(
                    radius: islandScape ? 45.r : 50.r,
                    backgroundColor:
                        Colors.white.withOpacity(.5), // لون خلفية الدائرة
                    child: CircleAvatar(
                      radius:
                          islandScape ? 40.r : 45.r, // نصف قطر الدائرة الداخلية
                      backgroundImage: const AssetImage(
                          Assets.person), // تعيين الصورة بشكل دائري
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const CartAboutMainGridView(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LogoutButton(
                    color: kMyRed,
                    text: 'مركز الدعم',
                    icon: Icons.support_agent,
                  ),
                  LogoutButton(
                    color: kMyGreen,
                    text: 'خروج',
                    icon: Icons.logout_sharp,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
