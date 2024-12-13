import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/profile/cart_about_main.dart';

class CartAboutMainGridView extends StatelessWidget {
  const CartAboutMainGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 15, // المسافة الأفقية بين الـ Containers
      runSpacing: 15, // المسافة الرأسية بين الـ Containers
      children: [
        CartAboutMain(
          text: 'عني',
          icon: Icons.person,
        ),
        CartAboutMain(
          text: 'طلباتي',
          icon: Icons.shopping_bag,
        ),
        CartAboutMain(
          text: 'مدفوعاتي',
          icon: Icons.payment,
        ),
        CartAboutMain(
          text: 'المفضل لدي',
          icon: Icons.favorite,
        ),
        CartAboutMain(
          text: 'المعاملات',
          icon: Icons.swap_horizontal_circle_outlined,
        ),
        CartAboutMain(
          text: 'رمز ترويجي',
          icon: Icons.local_offer,
        ),
        CartAboutMain(
          text: 'عنواني',
          icon: Icons.location_pin,
        ),
        CartAboutMain(
          text: 'تنبيه',
          icon: Icons.notifications,
        ),
        CartAboutMain(
          text: 'إعدادات',
          icon: Icons.settings_outlined,
        ),
      ],
    );
  }
}
