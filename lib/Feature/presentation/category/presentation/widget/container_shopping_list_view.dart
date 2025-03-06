import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/category/presentation/widget/container_shopping.dart';

class ContainerShoppingListView extends StatelessWidget {
  const ContainerShoppingListView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SizedBox(
      width: MediaQuery.of(context).size.width * (isLandscape ? .4 : 1),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: const ContainerShopping(),
          );
        },
      ),
    );
  }
}
