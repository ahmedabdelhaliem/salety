import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/Posation_logo_circle_avatar.dart';
import 'package:selaty/core/widget/custom_bottom_app_bar.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/impty_cart_view_body.dart';

class ImptyCartView extends StatefulWidget {
  const ImptyCartView({super.key});

  @override
  State<ImptyCartView> createState() => _ImptyCartViewState();
}

class _ImptyCartViewState extends State<ImptyCartView> {
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
              ImptyCartViewBody(), // محتوى الصفحة الرئيسي

              // CircleAvatar المتموضع
            ],
          ),
        ),
      ),
      const PostionLogoCircleAvatar(),
    ]);
  }
}
