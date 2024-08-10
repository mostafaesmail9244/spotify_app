import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/core/di/debendencies_injection.dart';
import 'package:spotify_app/core/helper/check_internet.dart';
import 'package:spotify_app/data/models/auth/sign_in_req.dart';
import 'package:spotify_app/domain/usecases/sign_in.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  bool isObscure = true;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() async {
    emit(LoginLoadingState());

    bool isConnected = await checkInternetConnectivity();
    if (isConnected) {
      final result = await getIt<SignInUseCase>().call(
          params: SignInUserReq(
        email: emailController.text,
        password: passwordController.text,
      ));

      result.fold(
        (error) {
          emit(LoginErrorState(error: error));
        },
        (data) => emit(LoginSuccessState()),
      );
    } else {
      emit(NoInternetConnectionState());
    }
  }

  void changeVisibility() {
    isObscure = !isObscure;
    emit(ChangeVisibilityState());
  }
}
