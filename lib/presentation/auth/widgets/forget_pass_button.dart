import 'package:flutter/material.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class ForgetPassButton extends StatelessWidget {
  const ForgetPassButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forget Password?',
          style: TextStyle(
              color: context.isDarkMode ? Colors.grey : AppColors.darkGrey),
        ),
      ),
    );
  }
}
