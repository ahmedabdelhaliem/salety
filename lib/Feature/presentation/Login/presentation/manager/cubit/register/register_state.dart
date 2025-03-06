part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {
  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final RegisterModel userRegister;
  RegisterSuccess({required this.userRegister});
}

class RegisterError extends RegisterState {
  final String errorMessage;
  RegisterError({required this.errorMessage});
}

class RegisterPasswordVisibilityChanged extends RegisterState {}
