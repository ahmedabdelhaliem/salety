import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:selaty/Feature/presentation/home/data/model/category/category.dart';
import 'package:selaty/Feature/presentation/home/data/model/products_model/products_model.dart';
import 'package:selaty/Feature/presentation/home/data/model/slider/slider.model.dart';
import 'package:selaty/Feature/presentation/home/data/repo/home_repo.dart';
import 'package:selaty/core/api/api_services.dart';
import 'package:selaty/core/error/failure.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, ProductsModel>> fetchBestsellerProducts() async {
    try {
      var response = await apiServices.get(endPoint: '/products/t/ar/0/0/0');
      var data = ProductsModel.fromJson(response);
      return right(data);
    } on DioException catch (e) {
      return Left(ServiceFailure.fromDioError(e));
    } catch (e) {
      return Left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SliderModel>> fetchSlider() async {
    try {
      var response = await apiServices.get(endPoint: '/advertising/t/ar/0');
      print(response); // ✅ تحقق من شكل البيانات قبل التحويل
      SliderModel sliderModel = SliderModel.fromJson(response);
      return Right(sliderModel);
    } on DioException catch (e) {
      return Left(ServiceFailure.fromDioError(e));
    } catch (e) {
      return Left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CategoryModel>> fetchCategory() async {
    try {
      var response = await apiServices.get(endPoint: '/categories/t/ar/0/0');
      CategoryModel categoryModel = CategoryModel.fromJson(response);
      return Right(categoryModel);
    } on DioException catch (e) {
      return Left(ServiceFailure.fromDioError(e));
    } catch (e) {
      return Left(ServiceFailure(e.toString()));
    }
  }
}
