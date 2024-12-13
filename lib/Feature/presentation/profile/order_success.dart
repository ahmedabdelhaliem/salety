import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/category/widget/Posation_logo_circle_avatar.dart';
import 'package:selaty/Feature/presentation/profile/widget/order_success_view_body.dart';
import 'package:selaty/core/widget/custom_bottom_app_bar.dart';
import 'package:selaty/Feature/presentation/category/widget/impty_cart_view_body.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess({super.key});

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
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
              OrderSuccessViewBody(), // محتوى الصفحة الرئيسي

              // CircleAvatar المتموضع
            ],
          ),
        ),
      ),
      const PostionLogoCircleAvatar(),
    ]);
  }
}
