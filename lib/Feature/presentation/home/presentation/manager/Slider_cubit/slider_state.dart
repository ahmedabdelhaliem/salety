part of 'slider_cubit.dart';

sealed class SliderState extends Equatable {
  const SliderState();

  @override
  List<Object> get props => [];
}

final class SliderInitial extends SliderState {}

class SliderSuccess extends SliderState {
  final SliderModel slider;
  const SliderSuccess({required this.slider});
}

class SliderLoading extends SliderState {}

class SliderFailure extends SliderState {
  final String errorMessage;
  const SliderFailure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
