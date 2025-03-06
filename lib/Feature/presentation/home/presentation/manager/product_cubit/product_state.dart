part of 'product_cubit.dart';

sealed class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

final class ProductInitial extends ProductState {}

final class ProductSuccess extends ProductState {
  final ProductsModel productsModel;

  const ProductSuccess(this.productsModel);
}

final class ProductFailure extends ProductState {
  final String errorMessage;

  const ProductFailure(this.errorMessage);
}

final class ProductLoading extends ProductState {}
