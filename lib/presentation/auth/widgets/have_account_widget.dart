import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Do you have an account? ',
            style: TextStyle(
                color: context.isDarkMode ? Colors.grey : AppColors.darkGrey),
          ),
          WidgetSpan(child: horizontalSpace(5)),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacmentNamed(Routes.loginScreen);
                },
              text: 'Login',
              style: const TextStyle(color: AppColors.primary)),
        ],
      ),
    );
  }
}
