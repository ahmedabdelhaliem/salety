import 'package:flutter/material.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/assets.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomLogoLogin extends StatelessWidget {
  const CustomLogoLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Row(
      // crossAxisAlignment: CrossAxisAlignment.s,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          Assets.logo,
          height: islandScape ? height * .2 : height * .2,
          width: width * .2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ســــــلتي',
                style: islandScape
                    ? Styles.textStyle16.copyWith(color: kMyRed)
                    : Styles.textStyle20.copyWith(color: kMyRed)),
            Text(
              'S E L A T Y',
              style: islandScape
                  ? Styles.textStyle14.copyWith(color: Colors.black)
                  : Styles.textStyle20.copyWith(color: Colors.black),
            ),
          ],
        )
      ],
    );
  }
}
