part of 'category_cubit.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

final class CategoryInitial extends CategoryState {}

final class CategoryLoading extends CategoryState {}

final class CategoryLoaded extends CategoryState {
  final CategoryModel category;

  const CategoryLoaded({required this.category});
}

final class CategoryError extends CategoryState {
  final String errorMessage;

  const CategoryError({required this.errorMessage});
}
