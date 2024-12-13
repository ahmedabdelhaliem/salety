import 'dart:math';

import 'package:flutter/material.dart';
import 'package:selaty/core/responsive_helper/size_provider.dart';

extension SizeHelperExtation on BuildContext {
  bool get islandScape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  double get screenWidth => islandScape
      ? MediaQuery.of(this).size.height
      : MediaQuery.of(this).size.width;
  double get screenHight => islandScape
      ? MediaQuery.of(this).size.width
      : MediaQuery.of(this).size.height;

  SizeProvider get sizeProvider => SizeProvider.of(this);

  double get scaleWidth => sizeProvider.width / sizeProvider.baseSize.width;
  double get scaleHight => sizeProvider.height / sizeProvider.baseSize.height;
  double setWidth(num w) {
    return w * scaleWidth;
  }

  double setHight(num h) {
    return h * scaleHight;
  }

  double setSp(num fontSize) {
    return fontSize * scaleWidth;
  }

  double setSize(num size) {
    return size * min(scaleWidth, scaleHight);
  }
}
