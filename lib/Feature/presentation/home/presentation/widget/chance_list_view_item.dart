import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/chance_list_view.dart';

class ChanceListViewItem extends StatelessWidget {
  const ChanceListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SizedBox(
      height: isLandscape
          ? MediaQuery.of(context).size.height * .4
          : MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 5.w), // إضافة تباعد بين العناصر
            child: const ChanceListView(),
          );
        },
      ),
    );
  }
}
