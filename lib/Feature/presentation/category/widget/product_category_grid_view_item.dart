import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/category/widget/product_category_grid_veiw.dart';

class ProductCategoryGridViewItem extends StatelessWidget {
  const ProductCategoryGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    // تحديد عدد الأعمدة بناءً على وضع الشاشة
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final int crossAxisCount = isLandscape ? 3 : 2;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 4.h),
      child: SizedBox(
        child: GridView.builder(
          shrinkWrap:
              true, // للسماح للشبكة بأخذ الحجم المطلوب بناءً على محتواها
          physics:
              const NeverScrollableScrollPhysics(), // تعطيل التمرير لأن الحاوية الخارجية تقوم بالتمرير
          itemCount: 8, // عدد العناصر التي سيتم عرضها
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                crossAxisCount, // تعيين عدد الأعمدة بناءً على الاتجاه
            crossAxisSpacing: 10.w, // المسافات بين الأعمدة
            mainAxisSpacing: 10.h, // المسافات بين الصفوف
            childAspectRatio: isLandscape ? .9 : 0.7, // نسبة العرض إلى الارتفاع
          ),
          itemBuilder: (BuildContext context, int index) {
            return const ProductCategoryGridVeiw();
          },
        ),
      ),
    );
  }
}
