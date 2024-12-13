import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'فواكة',
                style: isLandscape
                    ? Styles.textStyle8.copyWith(fontWeight: FontWeight.w600)
                    : Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          // استخدام SizedBox بدلاً من Expanded لضبط ارتفاع الصورة
          SizedBox(
            height: 60.r, // تعيين ارتفاع الصورة ليكون 40% من ارتفاع الحاوية
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.r), // حواف سفلية دائرية
                bottomRight: Radius.circular(10.r), // حواف سفلية دائرية
              ),
              child: Image.asset(
                Assets.slider,
                fit: BoxFit.cover, // لضمان أن الصورة تملأ المساحة المتاحة
                height: double.infinity,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
