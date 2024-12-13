import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/category/widget/category_grid_view.dart';

class CategoryGridViewItem extends StatelessWidget {
  const CategoryGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isLandscape ? 4 : 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 30,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const CategoryGridView();
        },
      ),
    );
  }
}
