import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/widget/best_seller_list_view_item.dart';
import 'package:selaty/Feature/presentation/home/widget/chance_list_view_item.dart';
import 'package:selaty/Feature/presentation/home/widget/custom_row_home_view.dart';
import 'package:selaty/Feature/presentation/home/widget/custom_text_row.dart';
import 'package:selaty/Feature/presentation/home/widget/fresh_category_grid_view.dart';
import 'package:selaty/Feature/presentation/home/widget/image_show.dart';
import 'package:selaty/Feature/presentation/home/widget/image_slider.dart';
import 'package:selaty/Feature/presentation/home/widget/list_view_Categories_item.dart';
import 'package:selaty/Feature/presentation/home/widget/offers_container_grid_view.dart';
import 'package:selaty/Feature/presentation/home/widget/section_row_and_setting.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 5.w, vertical: 5.h), // استخدم ScreenUtil لتعديل الهوامش
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CustomRowHomeView()),
          const SliverToBoxAdapter(child: SectionRowAndSetting()),
          const SliverToBoxAdapter(
              child: CustomTextRow(
            text: 'القيمة الافضل',
            text2: 'اعلى المبيعات',
          )),
          const SliverToBoxAdapter(child: SwiperSlider()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text('التصنيفات',
                  textAlign: TextAlign.right,
                  style:
                      Styles.textStyle18 // تعديل حجم الخط بناءً على حجم الشاشة
                  ),
            ),
          ),
          const SliverToBoxAdapter(child: ListViewCategoriesItem()),
          const SliverToBoxAdapter(child: CustomTextRow(text: 'الاكثر مبيعا')),
          const SliverToBoxAdapter(child: BestSellerListViewItem()),
          const SliverToBoxAdapter(child: ImageShow(image: Assets.slider)),
          const SliverToBoxAdapter(
              child: CustomTextRow(text: 'تسوق حسب العروض')),
          const SliverToBoxAdapter(child: OffersContainerGridView()),
          SliverToBoxAdapter(
            child: Text(
              'طازج و سريع',
              textAlign: TextAlign.right,
              style: isLandscape
                  ? Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)
                  : Styles.textStyle18,
            ),
          ),
          const SliverToBoxAdapter(child: FreshCategoryGridView()),
          const SliverToBoxAdapter(child: ImageShow(image: Assets.slider2)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                'انتهز الفرصة',
                textAlign: TextAlign.right,
                style: isLandscape
                    ? Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)
                    : Styles.textStyle18,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: ChanceListViewItem()),
        ],
      ),
    );
  }
}
