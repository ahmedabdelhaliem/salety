import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errorMessage); // تم تعديل هنا

  factory ServiceFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection timeout with API service');
      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send timeout with API service');
      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Receive timeout with API service');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        if (dioError.message!.contains('socketExption')) {
          return ServiceFailure('Request to API service was cancelled');
        } else {
          return ServiceFailure('Request to API service was cancelled');
        }
      case DioExceptionType.unknown:
        return ServiceFailure('An unexpected error occurred with API service');
      default:
        return ServiceFailure('An unknown error occurred with API service');
    }
  }

  factory ServiceFailure.fromResponse(int? statusCode, dynamic response) {
    final errorMessage = response['error']['message'];
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(errorMessage ?? 'Unauthorized access');
    } else if (statusCode == 404) {
      return ServiceFailure('Server not found');
    } else if (statusCode == 500) {
      if (errorMessage != null) {
        return ServiceFailure(errorMessage);
      } else {
        return ServiceFailure('Internal server error');
      }
    } else {
      return ServiceFailure('Oops, something went wrong');
    }
  }
}
