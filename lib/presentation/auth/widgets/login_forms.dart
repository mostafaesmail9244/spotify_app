import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/helper/app_regex.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/widgets/custom_text_form_field.dart';
import 'package:spotify_app/presentation/auth/controllers/login/login_cubit.dart';

class LoginForms extends StatelessWidget {
  const LoginForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Enter Your Email',
            validator: (val) {
              if (val!.isEmpty || !AppRegex.isEmailValid(val)) {
                return 'Please Enter Valid Email';
              }
              return null;
            },
            inputType: TextInputType.emailAddress,
            controller: context.read<LoginCubit>().emailController,
            autoFill: const [AutofillHints.email],
          ),
          verticalSpace(20),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return CustomTextFormField(
                hintText: 'Enter Your Password',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please Enter Valid Password';
                  }
                  return null;
                },
                controller: context.read<LoginCubit>().passwordController,
                isObsecureText: context.read<LoginCubit>().isObscure,
                sufficIcon: IconButton(
                  onPressed: () {
                    context.read<LoginCubit>().changeVisibility();
                  },
                  icon: Icon(
                    context.read<LoginCubit>().isObscure
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
