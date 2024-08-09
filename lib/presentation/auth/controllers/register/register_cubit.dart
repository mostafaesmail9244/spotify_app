import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:spotify_app/core/di/debendencies_injection.dart';
import 'package:spotify_app/core/helper/check_internet.dart';
import 'package:spotify_app/data/models/auth/sign_up_req.dart';
import 'package:spotify_app/domain/usecases/sign_up.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  bool isObscure = true;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUp() async {
    emit(RegisterLoadingState());
    bool isConnected = await checkInternetConnectivity();
    if (isConnected) {
      final result = await getIt<SignUpUseCase>().call(
          params: SignUpUserReq(
        fullName: fullNameController.text,
        email: emailController.text,
        password: passwordController.text,
      ));

      result.fold(
        (l) {
          emit(RegisterErrorState(error: l));
          Logger().e(l);
        },
        (data) => emit(RegisterSuccessState()),
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
