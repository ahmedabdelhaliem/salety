import 'data.dart';

class RegisterModel {
  bool? status;
  String? errorMessage;
  String? errorMessageEn;
  Data? data;

  RegisterModel({
    this.status,
    this.errorMessage,
    this.errorMessageEn,
    this.data,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        status: json['status'] as bool?,
        errorMessage: json['error_message'] as String?,
        errorMessageEn: json['error_message_en'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'error_message': errorMessage,
        'error_message_en': errorMessageEn,
        'data': data?.toJson(),
      };
}
