import 'package:flutter/material.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class SupportButton extends StatelessWidget {
  const SupportButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'If You Need Any Support',
          style: TextStyle(
              color: context.isDarkMode ? Colors.grey : AppColors.darkGrey),
          children: [
            TextSpan(
              onEnter: (val) {},
              text: ' Contact Us',
              style: const TextStyle(color: AppColors.primary),
            )
          ],
        ),
      ),
    );
  }
}
