import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/presentation/auth/controllers/register/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: context.deviceWidth * 0.8,
      child: ElevatedButton(
        onPressed: () async {
          if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
            context.read<RegisterCubit>().signUp();
          }
        },
        child: Text(
          'Create Account',
          style: TextStyle(
            color: context.isDarkMode ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
