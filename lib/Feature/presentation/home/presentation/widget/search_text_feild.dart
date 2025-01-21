import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center, // محاذاة النص أفقيًا في منتصف شريط البحث
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // جعل الخلفية بيضاء
        hintText: ' البحث  عن منتج معين',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ), // تنسيق النص التلميحي
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r), // حواف أقل سمكًا
          borderSide: BorderSide(
            color: Colors.white, // لون الحافة الخارجي
            width: 1.w, // تقليل سماكة الحافة
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(10.r), // حواف أقل سمكًا عند التركيز
          borderSide: BorderSide(
            color: Colors.grey, // لون الحافة عند التركيز
            width: 1.5.w, // تقليل سماكة الحافة عند التركيز
          ),
        ),
        prefixIcon: Padding(
          padding:
              EdgeInsets.only(left: 12.w), // إضافة مسافة بين النص والأيقونة
          child: const Icon(
            Icons.search,
            // color: kMyRed,
            size: 24, // حجم الأيقونة
          ),
        ),
        suffixIcon: Padding(
          padding:
              EdgeInsets.only(right: 12.w), // إضافة مسافة بين النص والأيقونة
          child: const Icon(
            Icons.cancel_outlined,
            // color: kMyRed,
            size: 24, // حجم الأيقونة
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.w, // تقليل الحشو الداخلي لعرض أقل
          vertical: 5.h, // تقليل الحشو الداخلي للارتفاع
        ),
      ),
    );
  }
}
