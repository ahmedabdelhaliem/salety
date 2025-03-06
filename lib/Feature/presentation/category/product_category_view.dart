import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/Posation_logo_circle_avatar.dart';
import 'package:selaty/core/widget/custom_bottom_app_bar.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/product_category_view_body.dart';

class ProductCategoryView extends StatefulWidget {
  const ProductCategoryView({super.key});

  @override
  State<ProductCategoryView> createState() => _ProductCategoryViewState();
}

class _ProductCategoryViewState extends State<ProductCategoryView> {
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
        body: const ProductCategoryViewBody(),
      )),
      const PostionLogoCircleAvatar(),
    ]);
  }
}
