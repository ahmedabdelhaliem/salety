import 'package:dartz/dartz.dart';
import 'package:selaty/Feature/presentation/home/data/model/products_model/products_model.dart';
import 'package:selaty/core/error/failure.dart';

abstract class ProductRepo {
  Future<Either<Failure, ProductsModel>> fetchBestsellerProducts();
}
