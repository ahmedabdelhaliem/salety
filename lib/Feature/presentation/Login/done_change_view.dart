import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/Login/widget/done_change_view_body.dart';
import 'package:selaty/constants.dart';
import 'package:selaty/core/widget/Custom_app_bar.dart';

class DoneChangeView extends StatelessWidget {
  const DoneChangeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: kMyGreen, body: SafeArea(child: DoneChangeViewBody()));
  }
}
