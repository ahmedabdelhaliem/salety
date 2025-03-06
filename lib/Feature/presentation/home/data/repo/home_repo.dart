import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:selaty/Feature/presentation/home/data/model/category/category.dart';
import 'package:selaty/Feature/presentation/home/data/model/products_model/datum.dart';
import 'package:selaty/Feature/presentation/home/data/model/products_model/products_model.dart';
import 'package:selaty/Feature/presentation/home/data/model/slider/slider.model.dart';
import 'package:selaty/core/error/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, ProductsModel>> fetchBestsellerProducts();
  Future<Either<Failure, SliderModel>> fetchSlider();
  Future<Either<Failure, CategoryModel>> fetchCategory();
}
