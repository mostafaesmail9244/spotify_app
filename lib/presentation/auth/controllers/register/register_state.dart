part of 'register_cubit.dart';

sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterErrorState extends RegisterState {
  final String error;

  RegisterErrorState({required this.error});
}

final class RegisterSuccessState extends RegisterState {}

final class RegisterLoadingState extends RegisterState {}

final class ChangeVisibilityState extends RegisterState {}

final class NoInternetConnectionState extends RegisterState {}
