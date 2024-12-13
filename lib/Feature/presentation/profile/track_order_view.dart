import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/category/widget/Posation_logo_circle_avatar.dart';
import 'package:selaty/Feature/presentation/category/widget/delivery_address_view_body.dart';
import 'package:selaty/Feature/presentation/profile/widget/profile_view_body.dart';
import 'package:selaty/Feature/presentation/profile/widget/track_order_view_body.dart';
import 'package:selaty/core/widget/custom_bottom_app_bar.dart';

class TrackOrderView extends StatefulWidget {
  const TrackOrderView({super.key});

  @override
  State<TrackOrderView> createState() => TrackOrderViewState();
}

class TrackOrderViewState extends State<TrackOrderView> {
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
              TrackOrderViewBody(), // محتوى الصفحة الرئيسي

              // CircleAvatar المتموضع
            ],
          ),
        ),
      ),
      const PostionLogoCircleAvatar(),
    ]);
  }
}
