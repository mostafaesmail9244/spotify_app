import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/widgets/custom_loading.dart';
import 'package:spotify_app/core/widgets/warning_widgets.dart';
import 'package:spotify_app/presentation/auth/controllers/login/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoadingState) {
          customLoading(context);
        } else if (state is LoginErrorState) {
          context.pop();
          AppWarning.snackBarState(context, state.error, isError: true);
        } else if (state is LoginSuccessState) {
          context.pop();
          AppWarning.snackBarState(context, 'Login successful');
        } else if (state is NoInternetConnectionState) {
          context.pop();
          AppWarning.snackBarState(context, 'Please check your internet',
              isError: true);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
