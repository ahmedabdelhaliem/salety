import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomRowStepTrackOrder extends StatelessWidget {
  const CustomRowStepTrackOrder({
    super.key,
    required this.text,
    required this.desText,
  });
  final String text;
  final String desText;

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: islandScape
                ? Styles.textStyle18
                : Styles.textStyle16.copyWith(color: kMyGreen),
            textAlign: TextAlign.right,
          ),
          Text(desText, style: Styles.textStyle12),
        ],
      ),
    );
  }
}
