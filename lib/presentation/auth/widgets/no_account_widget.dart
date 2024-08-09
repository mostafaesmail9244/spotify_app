import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class NoAccountWidget extends StatelessWidget {
  const NoAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(
                color: context.isDarkMode ? Colors.grey : AppColors.darkGrey),
          ),
          WidgetSpan(child: horizontalSpace(5)),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacmentNamed(Routes.registerScreen);
                },
              text: 'Register Now',
              style: const TextStyle(color: AppColors.primary)),
        ],
      ),
    );
  }
}
