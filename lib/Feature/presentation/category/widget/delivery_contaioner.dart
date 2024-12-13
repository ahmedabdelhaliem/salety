import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/assets/styles.dart';

class DeliveryContaioner extends StatefulWidget {
  const DeliveryContaioner(
      {super.key,
      required this.text,
      required this.mobile,
      required this.textLocation,
      required this.mainAxisAlignment});
  final String text;
  final String mobile;
  final MainAxisAlignment mainAxisAlignment;
  final String textLocation;

  @override
  State<DeliveryContaioner> createState() => _DeliveryContaionerState();
}

class _DeliveryContaionerState extends State<DeliveryContaioner> {
  int? selectedValue;

  // حالة checkbox
  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      width: MediaQuery.of(context).size.width * (isLandscape ? .5 : 1),
      padding: EdgeInsets.all(8.0.r), // تحديد الحواف الداخلية للحاوية
      decoration: BoxDecoration(
        color: Colors.white, // لون خلفية الحاوية
        borderRadius: BorderRadius.circular(10.r), // جعل الحاوية مدورة الحواف
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.more_horiz), // أيقونة ثلاث نقاط عمودية
                onPressed: () {
                  // يمكن إضافة وظائف هنا عند النقر على الأيقونة
                },
              ),
              Row(
                children: [
                  Text(widget.textLocation),
                  Radio<int>(
                    value: 1, // قيمة الخيار
                    groupValue: selectedValue, // القيمة الحالية
                    onChanged: (int? value) {
                      setState(() {
                        selectedValue = value; // تحديث القيمة المحددة
                      });
                    },
                    activeColor: kMyRed, // لون الدائرة عند التحديد
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              'https://www.behance.net/gallery/132802721/Design-App-Vegetables-Ui-Ux-?trackingn',
              style: Styles.textStyle16, // حجم النص
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: widget.mainAxisAlignment,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: widget.mobile, // رقم الجوال
                            style: Styles.textStyle16
                                .copyWith(color: Colors.black)),
                        TextSpan(
                          text: widget.text, // النص بجانب الجوال
                          style: Styles.textStyle16.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
