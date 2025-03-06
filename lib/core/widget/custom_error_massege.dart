import 'package:flutter/material.dart';
import 'package:selaty/core/assets/styles.dart';

class CustomErrorMassege extends StatelessWidget {
  const CustomErrorMassege({super.key, required this.errprMessage});
  final String errprMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errprMessage,
      style: Styles.textStyle16,
    );
  }
}
