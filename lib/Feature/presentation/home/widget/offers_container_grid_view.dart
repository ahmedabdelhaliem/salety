import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/widget/custom_offers_container.dart';
import 'package:selaty/constants.dart';

class OffersContainerGridView extends StatelessWidget {
  const OffersContainerGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return const Wrap(
      spacing: 8, // المسافة الأفقية بين الـ Containers
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: [
        CustomOffersContainer(
            color: kMyGreen, text: 'صفة', text1: '30%', text2: 'خصم'),
        CustomOffersContainer(
            color: Colors.blueAccent, text: 'صفة', text1: '40%', text2: 'خصم'),
        CustomOffersContainer(
            color: kMyRed, text: 'صفة', text1: '50%', text2: 'خصم'),
        CustomOffersContainer(
            color: Colors.deepOrange,
            text: 'اشتري 1',
            text1: 'واحصل ع 1',
            text2: 'مجانا'),
        CustomOffersContainer(
          color: Colors.lightGreenAccent,
          text: 'اقل',
          text1: '99SAR',
        ),
        CustomOffersContainer(
          color: kMyMove,
          text: 'اختيارات ',
          text1: 'الشهر',
          text2: '',
        ),
      ],
    );
  }
}
