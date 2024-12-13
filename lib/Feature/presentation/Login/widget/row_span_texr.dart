import 'package:flutter/material.dart';

class RowSpanText extends StatelessWidget {
  const RowSpanText({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: ' تسجيل الدخول',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                WidgetSpan(
                  child: Icon(Icons.arrow_circle_right_outlined,
                      size: 20, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(child: const Text(' لديك حساب بالفعل؟')),
      ],
    );
  }
}
