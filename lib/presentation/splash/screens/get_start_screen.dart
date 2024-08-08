import 'package:flutter/material.dart';
import 'package:spotify_app/core/constants/assets.dart';
import 'package:spotify_app/core/helper/extention.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/router/routes.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Image.asset(Assets.startImage),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset(Assets.splashLogo),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Enjoy Listening To Music',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 23,
                        ),
                      ),
                      verticalSpace(20),
                      const Center(
                        child: Text(
                          'Dive into a world of endless tunes and discover your next favorite track',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      verticalSpace(20),
                      SizedBox(
                        height: 60,
                        width: context.deviceWidth * 0.8,
                        child: ElevatedButton(
                          onPressed: () {
                            context.pushNamed(Routes.chooseModeScreen);
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      verticalSpace(20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
