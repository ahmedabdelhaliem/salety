import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';

class CircleAvataterIcon extends StatelessWidget {
  const CircleAvataterIcon({
    super.key,
    required this.icon,
    this.height,
  });
  final IconData icon;
  final double? height;

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: kMyGreen.withOpacity(.4),
          radius: isLandScape ? 30.r : 20.r,
          child: Icon(icon),
        ),
        Container(
          width: 2.w, // عرض الخط العمودي
          height: height, // طول الخط
          color: kMyGreen.withOpacity(.7), // لون الخط
        ),
      ],
    );
  }
}
