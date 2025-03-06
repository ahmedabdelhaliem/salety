import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:selaty/Feature/presentation/home/data/model/category/category.dart';
import 'package:selaty/Feature/presentation/home/data/repo/home_repo.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final HomeRepo homeRepo;
  CategoryCubit(this.homeRepo) : super(CategoryInitial());
  void fetchCategory() async {
    emit(CategoryLoading());
    final result = await homeRepo.fetchCategory();
    result.fold(
        (failure) => emit(CategoryError(errorMessage: failure.toString())),
        (category) => emit(CategoryLoaded(category: category)));
  }
}
