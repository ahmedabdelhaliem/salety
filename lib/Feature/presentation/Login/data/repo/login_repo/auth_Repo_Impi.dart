import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:selaty/Feature/presentation/Login/data/model/login_model/login_model.dart';
import 'package:selaty/Feature/presentation/Login/data/model/register/register.dart';
import 'package:selaty/Feature/presentation/Login/data/repo/login_repo/login_repo.dart';
import 'package:selaty/core/api/api_services.dart';
import 'package:selaty/core/error/failure.dart';

class authRepoImpi implements LoginRepo {
  final ApiServices apiServices;

  authRepoImpi({required this.apiServices});

  @override
  Future<Either<Failure, LoginModel>> loginUser(
      {required password, required email}) async {
    try {
      var data = await apiServices.post(
          endPoint: '/login',
          data: {'phone_email': email, 'password': password});

      print("✅ Login response data: $data");

      return right(LoginModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      } else {
        return left(ServiceFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, RegisterModel>> register(
      String name, String email, String password, String phone) async {
    try {
      print(
          "📌 Register Request: name=$name, email=$email, password=$password, phone=$phone");

      var data = await apiServices.registerUser(
        endPoint: "/register",
        data: {
          "name": name,
          "email": email,
          "password": password,
          "c_password": password,
          "mobile": phone // ✅ تصحيح المفتاح ليطابق الـ API
        },
      );

      print("✅ Register response data: $data");

      return right(RegisterModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioError(e));
      } else {
        return left(ServiceFailure(e.toString()));
      }
    }
  }
}
