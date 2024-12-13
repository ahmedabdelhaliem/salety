import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';

class ContainerShopping extends StatelessWidget {
  const ContainerShopping({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // استخدام spaceBetween
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  '25,000\$ × 2',
                  style: isLandscape
                      ? Styles.textStyle14.copyWith(color: kMyGreen)
                      : Styles.textStyle14.copyWith(color: kMyGreen),
                ),
                SizedBox(
                  height: isLandscape ? 3.h : 0,
                ),
                Text('كمثرى مصري',
                    style: isLandscape
                        ? Styles.textStyle18.copyWith(color: kMyGreen)
                        : Styles.textStyle20),
                SizedBox(
                  height: isLandscape ? 6.h : 0,
                ),
                Opacity(
                  opacity: .7,
                  child: Text('1kg',
                      style: isLandscape
                          ? Styles.textStyle14
                          : Styles.textStyle14),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.minimize_sharp, size: isLandscape ? 18 : 24)),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: isLandscape ? 10.w : 16.w),
                child: Text(' 2',
                    style:
                        isLandscape ? Styles.textStyle16 : Styles.textStyle20),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    size: isLandscape ? 18 : 24,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
