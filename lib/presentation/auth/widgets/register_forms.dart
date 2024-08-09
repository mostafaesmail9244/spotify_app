import 'package:flutter/material.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/widgets/custom_text_form_field.dart';
import 'package:spotify_app/presentation/auth/controllers/register/register_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/helper/app_regex.dart';

class RegisterForms extends StatelessWidget {
  const RegisterForms({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Full Name',
            validator: (val) {
              if (val!.isEmpty) {
                return 'Please Enter Valid Name';
              }
              return null;
            },
            inputType: TextInputType.text,
            controller: context.read<RegisterCubit>().fullNameController,
            autoFill: const [AutofillHints.name],
          ),
          verticalSpace(20),
          CustomTextFormField(
            hintText: 'Enter Email',
            validator: (val) {
              if (val!.isEmpty || !AppRegex.isEmailValid(val)) {
                return 'Please Enter Valid Email';
              }
              return null;
            },
            inputType: TextInputType.emailAddress,
            controller: context.read<RegisterCubit>().emailController,
            autoFill: const [AutofillHints.email],
          ),
          verticalSpace(20),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return CustomTextFormField(
                hintText: 'Enter Password',
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Please Enter Valid Password';
                  }
                  return null;
                },
                controller: context.read<RegisterCubit>().passwordController,
                isObsecureText: context.read<RegisterCubit>().isObscure,
                sufficIcon: IconButton(
                  onPressed: () {
                    context.read<RegisterCubit>().changeVisibility();
                  },
                  icon: Icon(
                    context.read<RegisterCubit>().isObscure
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
