import 'package:flutter/material.dart';

import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/core/themes/app_colors.dart';
import 'package:spotify_app/presentation/splash/widgets/background_screen.dart';
import 'package:spotify_app/presentation/splash/widgets/choose_mode_buttons.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScreen(
      widget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Choose Your Mode',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 23,
            ),
          ),
          verticalSpace(20),
          const ModeButtons(),
          verticalSpace(40),
          SizedBox(
            height: 60,
            width: context.deviceWidth * 0.8,
            child: ElevatedButton(
              onPressed: () {
                // TODO: Navigate to next screen
                context.pushNamed(Routes.authScreen);
              },
              child: const Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
