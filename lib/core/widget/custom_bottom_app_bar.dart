import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/utils/app_router.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemSelected;

  const CustomBottomAppBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55, // هنا تحديد الارتفاع بشكل مباشر
      child: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5.h), // تقليل padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.person_outlined,
                    color: currentIndex == 0
                        ? kMyRed
                        : Colors.grey, // تغيير اللون عند الاختيار
                  ),
                  onPressed: () {
                    onItemSelected(0);

                    GoRouter.of(context).push(AppRouter.kProfileView);
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: currentIndex == 1
                        ? kMyRed
                        : Colors.grey, // تغيير اللون عند الاختيار
                  ),
                  onPressed: () {
                    onItemSelected(1);
                    GoRouter.of(context).push(AppRouter.kProductCategoryView);
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: currentIndex == 2
                        ? kMyRed
                        : Colors.grey, // تغيير اللون عند الاختيار
                  ),
                  onPressed: () => onItemSelected(2),
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: currentIndex == 3
                        ? kMyRed
                        : Colors.grey, // تغيير اللون عند الاختيار
                  ),
                  onPressed: () => onItemSelected(3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
