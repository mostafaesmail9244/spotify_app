import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/widgets/custom_loading.dart';
import 'package:spotify_app/core/widgets/warning_widgets.dart';
import 'package:spotify_app/presentation/auth/controllers/register/register_cubit.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          customLoading(context);
        } else if (state is RegisterErrorState) {
          context.pop();
          AppWarning.snackBarState(context, state.error, isError: true);
        } else if (state is RegisterSuccessState) {
          context.pop();
          AppWarning.snackBarState(context, 'Account created successfully');
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
