import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/category/category_land_scape/shopping_category_land_scape.dart';
import 'package:selaty/Feature/presentation/category/widget/Posation_logo_circle_avatar.dart';
import 'package:selaty/core/widget/custom_bottom_app_bar.dart';
import 'package:selaty/Feature/presentation/category/widget/shopping_cart_view_body.dart';

class ShoppingCartView extends StatefulWidget {
  const ShoppingCartView({super.key});

  @override
  State<ShoppingCartView> createState() => _ShoppingCartViewState();
}

class _ShoppingCartViewState extends State<ShoppingCartView> {
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
          body: Stack(
            children: [
              OrientationBuilder(
                builder: (context, orientation) {
                  if (orientation == Orientation.portrait) {
                    // عرض التصميم للاتجاه العمودي
                    return const ShoppingCartViewBody();
                  } else {
                    // عرض التصميم للاتجاه الأفقي
                    return const ShoppingCartViewBodyLandScape();
                  }
                },
              )

              // محتوى الصفحة الرئيسي

              // CircleAvatar المتموضع
            ],
          ),
        ),
      ),
      const PostionLogoCircleAvatar(),
    ]);
  }
}
