import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:selaty/Feature/presentation/home/data/model/products_model/products_model.dart';
import 'package:selaty/Feature/presentation/home/data/repo/home_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepo) : super(ProductInitial());
  final HomeRepo productRepo;
  void frechProducts() async {
    emit(ProductLoading());
    var result = await productRepo.fetchBestsellerProducts();
    result.fold((failure) {
      emit(ProductFailure(failure.errorMessage));
    }, (sucess) {
      emit(ProductSuccess(sucess));
    });
  }
}
