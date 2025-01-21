import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({super.key, required this.text, this.text2 = ''});
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
        // color: kMyGray,
        height: 40.h,
        child: Row(
          children: [
            GestureDetector(
              child: Opacity(
                opacity: .7,
                child: Text(
                  'مشاهدة الكل',
                  textAlign: TextAlign.right,
                  style: isLandscape ? Styles.textStyle16 : Styles.textStyle18,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 12,
            ),
            const Spacer(),
            Opacity(
              opacity: .7,
              child: Text(
                text2,
                textAlign: TextAlign.right,
                style: isLandscape ? Styles.textStyle12 : Styles.textStyle14,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              text,
              textAlign: TextAlign.right,
              style: isLandscape ? Styles.textStyle18 : Styles.textStyle18,
            )
          ],
        ),
      ),
    );
  }
}
