import 'package:dartz/dartz.dart';
import 'package:selaty/Feature/presentation/Login/data/model/login_model/login_model.dart';
import 'package:selaty/Feature/presentation/Login/data/model/register/register.dart';
import 'package:selaty/core/error/failure.dart';

abstract class LoginRepo {
  Future<Either<Failure, LoginModel>> loginUser(
      {required password, required email});
  Future<Either<Failure, RegisterModel>> register(
      String name, String email, String password, String phone);
}
