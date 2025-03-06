import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selaty/Feature/presentation/home/presentation/manager/slider_cubit/slider_cubit.dart';
import 'package:selaty/Feature/presentation/home/presentation/widget/image_slider.dart';
import 'package:selaty/core/widget/custom_error_massege.dart';

class ImageSliderBlocBuilder extends StatelessWidget {
  const ImageSliderBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderCubit, SliderState>(
      builder: (context, state) {
        if (state is SliderSuccess) {
          final slider = state.slider.data ?? [];

          if (slider.isEmpty) {
            return const Center(child: Text("🚫 لا توجد بيانات متاحة"));
          }

          // ✅ تحويل قائمة Datum إلى List<Map<String, dynamic>>
          final List<Map<String, dynamic>> sliderData = slider.map((datum) {
            final map = datum.toJson();
            print(
                "🔵 البيانات القادمة من API: $map"); // ✅ طباعة البيانات لفحصها
            return map;
          }).toList();

          return SwiperSlider(dataList: sliderData);
        } else if (state is SliderFailure) {
          return CustomErrorMassege(errprMessage: state.errorMessage);
        } else {
          return const Center(
            child: SizedBox(
              height: 50,
              width: 50,
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
