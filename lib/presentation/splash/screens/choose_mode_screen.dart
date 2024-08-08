import 'package:flutter/material.dart';
import 'package:spotify_app/core/constants/assets.dart';
import 'package:spotify_app/core/helper/extention.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/themes/app_colors.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

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
                        'Choose Your Mode',
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 23,
                        ),
                      ),
                      verticalSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton.filled(
                                onPressed: () {},
                                icon: const Icon(Icons.dark_mode),
                                color: AppColors.grey,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton.filled(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.light_mode_outlined,
                                  color: AppColors.grey,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      verticalSpace(40),
                      SizedBox(
                        height: 60,
                        width: context.deviceWidth * 0.8,
                        child: ElevatedButton(
                          onPressed: () {
                            // TODO: Navigate to next screen
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
