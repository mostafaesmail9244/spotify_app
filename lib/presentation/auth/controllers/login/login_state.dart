part of 'login_cubit.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginErrorState extends LoginState {
  final String error;

  LoginErrorState({required this.error});
}

final class LoginSuccessState extends LoginState {}

final class LoginLoadingState extends LoginState {}

final class ChangeVisibilityState extends LoginState {}

final class NoInternetConnectionState extends LoginState {}
