import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/helper/app_regex.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/core/themes/app_colors.dart';
import 'package:spotify_app/core/widgets/custom_text_form_field.dart';
import 'package:spotify_app/presentation/auth/controllers/login/login_cubit.dart';
import 'package:spotify_app/presentation/auth/widgets/divider_widget.dart';
import 'package:spotify_app/presentation/auth/widgets/social_buttons.dart';

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
              if (val!.isEmpty || AppRegex.isEmailValid(val)) {
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
                  if (val!.isEmpty || AppRegex.isPasswordValid(val)) {
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
          verticalSpace(20),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forget Password?',
                style: TextStyle(
                    color:
                        context.isDarkMode ? Colors.grey : AppColors.darkGrey),
              ),
            ),
          ),
          verticalSpace(20),
          SizedBox(
            height: 60,
            width: context.deviceWidth * 0.8,
            child: ElevatedButton(
              onPressed: () {
                if (context
                    .read<LoginCubit>()
                    .formKey
                    .currentState!
                    .validate()) {}
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: context.isDarkMode ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
          verticalSpace(20),
          const DividerWidget(),
          const SocialButtons(),
          verticalSpace(20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Not a member? ',
                  style: TextStyle(
                      color: context.isDarkMode
                          ? Colors.grey
                          : AppColors.darkGrey),
                ),
                WidgetSpan(child: horizontalSpace(5)),
                TextSpan(
                    onEnter: (val) {
                      context.pushNamed(Routes.registerScreen);
                    },
                    text: 'Register Now',
                    style: const TextStyle(color: AppColors.primary)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
