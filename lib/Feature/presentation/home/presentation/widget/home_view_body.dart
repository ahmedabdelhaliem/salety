import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/best_seller_list_view_bloc_builder.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/chance_list_view_item.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/custom_row_home_view.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/custom_text_row.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/fresh_category_grid_view.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/image_show.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/image_slider_bloc_builder.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/list_view_Categories_item_bloc_bluider.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/offers_container_grid_view.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/section_row_and_setting.dart';
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
          const SliverToBoxAdapter(child: ImageSliderBlocBuilder()),
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
          const SliverToBoxAdapter(child: ListViewCategoriesBlocBuilder()),
          const SliverToBoxAdapter(child: CustomTextRow(text: 'الاكثر مبيعا')),
          const SliverToBoxAdapter(child: BestSellerListViewBlocBuilder()),
          const SliverToBoxAdapter(child: ImageSliderBlocBuilder()),
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
          const SliverToBoxAdapter(child: BestSellerListViewBlocBuilder()),
          const SliverToBoxAdapter(child: ImageSliderBlocBuilder()),
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
