import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:selaty/constants.dart';

class PinCodeWidget extends StatelessWidget {
  const PinCodeWidget({
    super.key,
    this.controller,
    this.pinLength = 4, // افتراضي لطول الرمز
    this.focus,
    this.pinBoxWidth,
    required this.textSubmit,
  });

  final Function(String) textSubmit;
  final TextEditingController? controller;
  final int? pinLength;
  final FocusNode? focus;
  final double? pinBoxWidth;

  @override
  Widget build(BuildContext context) {
    bool islandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Center(
      child: PinCodeTextField(
        appContext: context,
        length: pinLength!,
        controller: controller,
        focusNode: focus,
        keyboardType: TextInputType.number,
        animationType: AnimationType.fade,
        autoFocus: true,
        enableActiveFill: true,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldHeight:
              MediaQuery.of(context).size.height * (islandScape ? 0.12 : 0.12),
          fieldWidth: pinBoxWidth ??
              MediaQuery.of(context).size.width * (islandScape ? 0.09 : 0.2),
          borderRadius: BorderRadius.circular(8.r),
          activeColor: Colors.transparent, // إزالة الحدود
          selectedColor: Colors.transparent, // إزالة الحدود عند التحديد
          inactiveColor: Colors.transparent, // إزالة الحدود عند عدم التحديد
          activeFillColor: kMyRed,
          selectedFillColor: kMyRed.withOpacity(0.5),
          inactiveFillColor: Colors.white,
        ),
        cursorColor: Colors.black,
        textStyle: TextStyle(
          color: Colors.white, // جعل الأرقام باللون الأبيض
          fontSize: 20.sp,
        ),
        onChanged: (text) {
          // يتم استدعاء هذه الدالة عند تغير النص
        },
        onCompleted: (text) {
          textSubmit(text);
        },
      ),
    );
  }
}
