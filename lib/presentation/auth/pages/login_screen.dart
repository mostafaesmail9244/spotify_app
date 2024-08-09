import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_app/core/constants/assets.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/presentation/auth/widgets/forget_pass_button.dart';
import 'package:spotify_app/presentation/auth/widgets/login_bloc_listener.dart';
import 'package:spotify_app/presentation/auth/widgets/login_button.dart';
import 'package:spotify_app/presentation/auth/widgets/login_forms.dart';
import 'package:spotify_app/presentation/auth/widgets/no_account_widget.dart';
import 'package:spotify_app/presentation/auth/widgets/support_button.dart';
import 'package:spotify_app/presentation/auth/widgets/divider_widget.dart';
import 'package:spotify_app/presentation/auth/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            )),
        title: Image.asset(
          Assets.splashLogo,
          height: 35.h,
          width: 110.w,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                verticalSpace(20),
                const SupportButton(),
                verticalSpace(30),
                const LoginForms(),
                verticalSpace(20),
                const ForgetPassButton(),
                verticalSpace(20),
                const LoginButton(),
                verticalSpace(20),
                const DividerWidget(),
                const SocialButtons(),
                verticalSpace(20),
                const NoAccountWidget(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
