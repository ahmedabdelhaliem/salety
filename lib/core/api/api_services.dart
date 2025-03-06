import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  final _basUrl = 'https://marketappmaster.com/api';
  ApiServices(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_basUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> post({required endPoint, required data}) async {
    var response = await dio.post('$_basUrl$endPoint', data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> registerUser(
      {required endPoint, required data}) async {
    var response = await dio.post('$_basUrl$endPoint', data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> getUserData({required endPoint}) async {
    var response = await dio.get('$_basUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> getSliderData({required endPoint}) async {
    var response = await dio.get('$_basUrl$endPoint');
    return response.data;
  }

  Future<Map<String, dynamic>> getCategory({required endPoint}) async {
    var response = await dio.get('$_basUrl$endPoint');
    return response.data;
  }
//   Future<Map<String, dynamic>> post({required String endPoint, required Map<String, dynamic> data}) async {
//   var response = await dio.post('$_basUrl$endPoint', data: data);
//   return response.data;
// }
}
