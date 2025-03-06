import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selaty/Feature/presentation/home/data/model/slider/slider.model.dart';
import 'package:selaty/Feature/presentation/home/data/repo/home_repo.dart';

part 'slider_state.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit(this.homeRepo) : super(SliderInitial());
  final HomeRepo homeRepo;
  void fetchSlider() async {
    emit(SliderLoading());
    var result = await homeRepo.fetchSlider();
    result.fold((failure) {
      emit(SliderFailure(
        errorMessage: failure.errorMessage,
      ));
    }, (sucess) {
      emit(SliderSuccess(slider: sucess));
    });
  }
}
