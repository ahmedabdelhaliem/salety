import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/Posation_logo_circle_avatar.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/product_category_view_body.dart';
import 'package:selaty/core/widget/custom_bottom_app_bar.dart';

class CategoryLandScape extends StatefulWidget {
  const CategoryLandScape({super.key});

  @override
  State<CategoryLandScape> createState() => _CategoryLandScapeState();
}

class _CategoryLandScapeState extends State<CategoryLandScape> {
  int currentIndex = 0;

  void _onItemSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SafeArea(
        child: Scaffold(
          bottomNavigationBar: CustomBottomAppBar(
            currentIndex: currentIndex,
            onItemSelected: _onItemSelected,
          ),
          body: const Stack(
            children: [
              ProductCategoryViewBody(), // محتوى الصفحة الرئيسي

              // CircleAvatar المتموضع
            ],
          ),
        ),
      ),
      const PostionLogoCircleAvatar(),
    ]);
  }
}
