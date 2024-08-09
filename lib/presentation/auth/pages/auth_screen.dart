import 'package:flutter/material.dart';
import 'package:spotify_app/core/constants/assets.dart';
import 'package:spotify_app/core/helper/extentions.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/router/routes.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(80),
            Image.asset(Assets.splashLogo),
            verticalSpace(50),
            const Text(
              'Enjoy Listening To Music',
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            verticalSpace(20),
            const Text(
              'Spotify is a proprietary Swedish audio streaming and media services provider',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            verticalSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.pushNamed(Routes.registerScreen);
                    },
                    child: const Text('Register',
                        style: TextStyle(color: Colors.white))),
                ElevatedButton(
                    onPressed: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                    child: const Text('Login',
                        style: TextStyle(color: Colors.white))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
