import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/best_seller_list_view.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 650.h, // ارتفاع محدد
        ),
        child: Wrap(
          alignment: WrapAlignment.center, // محاذاة العناصر في المنتصف
          spacing: isLandscape ? 10 : 15.w, // مسافة أفقية بين العناصر
          runSpacing: isLandscape ? 10.h : 15.h, // مسافة رأسية بين العناصر
          children: List.generate(4, (index) => const BestSellerListView())
              .map((item) {
            return SizedBox(
              width: MediaQuery.of(context).size.width *
                  (isLandscape ? .22 : .45), // عرض العنصر
              height: isLandscape ? 300.h : 250.h, // تحديد ارتفاع العناصر
              child: item,
            );
          }).toList(),
        ),
      ),
    );
  }
}
